# Reference dependencies
. ([System.IO.Path]::Combine($PSScriptRoot, "..\Install-NugetPackage.ps1"))

# Load required assemblies
Install-NugetPackage DerConverter '3.0.0.82'
Install-NugetPackage PemUtils '3.0.0.82'

$privateKeyPath = [System.IO.Path]::Combine($PSScriptRoot, "..\config\private.key") | Resolve-Path
$outputFile = [System.IO.Path]::Combine($PSScriptRoot, "..\config\ds_access_token.txt") | Resolve-Path
$accountIdFile = [System.IO.Path]::Combine($PSScriptRoot, "..\config\API_ACCOUNT_ID")

$userId = $(Get-Variable IMPERSONATION_USER_GUID -ValueOnly) -replace '["]'
$INTEGRATION_KEY_JWT = $(Get-Variable INTEGRATION_KEY_JWT -ValueOnly) -replace '["]'

Clear-Content -Path $outputFile

$timestamp = [int][double]::Parse((Get-Date -UFormat %s))

$decJwtHeader = [ordered]@{
    'typ' = 'JWT';
    'alg' = 'RS256'
} | ConvertTo-Json -Compress

$decJwtPayLoad = [ordered]@{
    'iss'   = $INTEGRATION_KEY_JWT;
    'sub'   = $userId;
    'iat'   = $timestamp;
    'exp'   = $timestamp + 3600;
    'aud'   = 'account-d.docusign.com';
    'scope' = 'signature impersonation'
} | ConvertTo-Json -Compress

$encJwtHeaderBytes = [System.Text.Encoding]::UTF8.GetBytes($decJwtHeader)
$encJwtHeader = [System.Convert]::ToBase64String($encJwtHeaderBytes) -replace '\+', '-' -replace '/', '_' -replace '='

$encJwtPayLoadBytes = [System.Text.Encoding]::UTF8.GetBytes($decJwtPayLoad)
$encJwtPayLoad = [System.Convert]::ToBase64String($encJwtPayLoadBytes) -replace '\+', '-' -replace '/', '_' -replace '='

$jwtToken = "$encJwtHeader.$encJwtPayLoad"

$keyStream = [System.IO.File]::OpenRead($privateKeyPath)
$keyReader = [PemUtils.PemReader]::new($keyStream)

$rsaParameters = $keyReader.ReadRsaKey()
$rsa = [System.Security.Cryptography.RSA]::Create($rsaParameters)

$tokenBytes = [System.Text.Encoding]::ASCII.GetBytes($jwtToken)
$signedToken = $rsa.SignData(
    $tokenBytes,
    [System.Security.Cryptography.HashAlgorithmName]::SHA256,
    [System.Security.Cryptography.RSASignaturePadding]::Pkcs1)

$signedBase64Token = [System.Convert]::ToBase64String($signedToken) -replace '\+', '-' -replace '/', '_' -replace '='

$jwtToken = "$encJwtHeader.$encJwtPayLoad.$signedBase64Token"

try {
    $authorizationEndpoint = "https://account-d.docusign.com/oauth/"
    $tokenResponse = Invoke-WebRequest `
        -Uri "$authorizationEndpoint/token" `
        -Method "POST" `
        -Body "grant_type=urn:ietf:params:oauth:grant-type:jwt-bearer&assertion=$jwtToken"
    $accessToken = ($tokenResponse | ConvertFrom-Json).access_token
    Write-Output $accessToken > $outputFile
    Write-Output "Access token has been written to $outputFile file...`n"

    Write-Output "`nGetting an account id...`n"
    $userInfoResponse = Invoke-RestMethod `
        -Uri "$authorizationEndpoint/userinfo" `
        -Method "GET" `
        -Headers @{ "Authorization" = "Bearer $accessToken" }
    $accountId = $userInfoResponse.accounts[0].account_id
    Write-Output "`nAccount id: $accountId`n"
    Write-Output $accountId > $accountIdFile
    Write-Output "Account id has been written to $accountIdFile file...`n"
}
catch {
    Write-Error $_
}
