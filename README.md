

TO BE DONE

# DocuSign eSignature Bash Code Examples

### Github repo: code-examples-bash
## Introduction
This repo includes a bash command line application that use curl to demonstrate:

1. **Embedded Signing Ceremony.**
   [Source.](./examples/eg001EmbeddedSigning.sh)
   This example sends an envelope, and then uses an embedded signing ceremony for the first signer.
   With embedded signing, the DocuSign signing ceremony is initiated from your website.
1. **Send an envelope with a remote (email) signer and cc recipient.**
   [Source.](./examples/eg002SigningViaEmail.sh)
   The envelope includes a pdf, Word, and HTML document.
   Anchor text ([AutoPlace](https://support.docusign.com/en/guides/AutoPlace-New-DocuSign-Experience)) is used to position the signing fields in the documents.
1. **List envelopes in the user's account.**
   [Source.](./examples/eg003ListEnvelopes.sh)
1. **Get an envelope's basic information.**
   [Source.](./examples/eg004EnvelopeInfo.sh)
   The example lists the basic information about an envelope, including its overall status.
1. **List an envelope's recipients** 
   [Source.](./examples/eg005EnvelopeRecipients.sh)
   Includes current recipient status.
1. **List an envelope's documents.**
   [Source.](./examples/eg006EnvelopeDocs.sh)
1. **Download an envelope's documents.** 
   [Source.](./examples/eg007EnvelopeGetDoc.sh)
   The example can download individual
   documents, the documents concatenated together, or a zip file of the documents.
1. **Programmatically create a template.**
   [Source.](./examples/eg008CreateTemplate.sh)
1. **Send an envelope using a template.**
   [Source.](./examples/eg009UseTemplate.sh)
1. **Send an envelope and upload its documents with multipart binary transfer.**
   [Source.](./examples/eg010SendBinaryDocs.sh)
   Binary transfer is 33% more efficient than using Base64 encoding.
1. **Embedded sending.**
   [Source.](./examples/eg011EmbeddedSending.sh)
   Embeds the DocuSign web tool (NDSE) in your web app to finalize or update 
   the envelope and documents before they are sent.
1. **Embedded DocuSign web tool (NDSE).**
   [Source.](./examples/eg012EmbeddedConsole.sh)
1. **Embedded Signing Ceremony from a template with an added document.**
   [Source.](./examples/eg013AddDocToTemplate.sh)
   This example sends an envelope based on a template.
   In addition to the template's document(s), the example adds an
   additional document to the envelope by using the
   [Composite Templates](https://developers.docusign.com/esign-rest-api/guides/features/templates#composite-templates)
   feature.
1. **Payments Example.**
   [Source.](./examples/eg014CollectPayment.sh)
   An order form, with online payment by credit card.
1. **Get the envelope tab data.**
   Retrieve the tab (field) values for all of the envelope's recipients.
   [Source.](./examples/eg015EnvelopeTabData.sh)
1. **Set envelope tab values.**
   The example creates an envelope and sets the initial values for its tabs (fields). Some of the tabs
   are set to be read-only, others can be updated by the recipient. The example also stores
   metadata with the envelope.
   [Source.](./examples/eg016SetTabValues.sh)
1. **Set template tab values.**
   The example creates an envelope using a template and sets the initial values for its tabs (fields).
   The example also stores metadata with the envelope.
   [Source.](./examples/eg017SetTemplateTabValues.sh)
1. **Get the envelope custom field data (metadata).**
   The example retrieves the custom metadata (custom data fields) stored with the envelope.
   [Source.](./examples/eg018EnvelopeCustomFieldData.sh)
1. **Requiring an Access Code for a Recipient**   
   [Source.](./examples/eg019SigningViaEmailWithAccessCode.sh)
   This example sends an envelope using remote (email) signing requiring the recipient to enter an access code.
1. **Send an envelope with a remote (email) signer using SMS authentication.**
   [Source.](./examples/eg020SigningViaEmailWithSmsAuthentication.sh)
   This example sends an envelope using remote (email) signing requiring the recipient to supply a verification code sent to them via SMS.
1. **Send an envelope with a remote (email) signer using Phone authentication.**
   [Source.](./examples/eg021SigningViaEmailWithPhoneAuthentication.sh)
   This example sends an envelope using remote (email) signing requiring the recipient to supply a verification code sent to them via a phone call.
1. **Send an envelope with a remote (email) signer using Knowledge-Based authentication.**
   [Source.](./examples/eg022SigningViaEmailWithKnoweldgeBasedAuthentication.sh)
   This example sends an envelope using remote (email) signing requiring the recipient to validate their identity via Knowledge-Based authentication.
1. **Send an envelope with a remote (email) signer using Identity Verification.**
   [Source.](./examples/eg023SigningViaEmailWithIDVAuthentication.sh)
   This example sends an envelope using remote (email) signing requiring the recipient to validate their identity via a government issued ID.
1. **Creating a permission profile**
   [Source.](./examples/eg024CreatingPermissionProfiles.sh)
   This code example demonstrates how to create a permission profile using the [Create Permission Profile](https://developers.docusign.com/esign-rest-api/reference/Accounts/AccountPermissionProfiles/create) method.
1. **Setting a permission profile**
   [Source.](./examples/eg025SettingPermissionProfiles.sh)
   This code example demonstrates how to set a user group’s permission profile using the [Update Group](https://developers.docusign.com/esign-rest-api/reference/UserGroups/Groups/update) method. 
   You must have already created the permissions profile and the group of users.
1. **Updating individual permission settings**
   [Source.](./examples/eg026UpdatingIndividualPermission.sh)
   This code example demonstrates how to edit individual permission settings on a permissions profile using the [Update Permission Profile](https://developers.docusign.com/esign-rest-api/reference/Accounts/AccountPermissionProfiles/update) method.
1. **Deleting a permission profile**
   [Source.](./examples/eg027DeletingPermissions.sh)
   This code example demonstrates how to delete a permission profile using the [Delete Permission Profile](https://developers.docusign.com/esign-rest-api/reference/Accounts/AccountPermissionProfiles/create) method.
1. **Creating a brand**
   [Source.](./examples/eg028CreatingABrand.sh)
   This example creates brand profile for an account using the [Create Brand](https://developers.docusign.com/esign-rest-api/reference/Accounts/AccountBrands/create) method.
1. **Applying a brand to an envelope**
   [Source.](./examples/eg029ApplyingBrandEnvelope.sh)
   This code example demonstrates how to apply a brand you've created to an envelope using the [Create Envelope](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/create) method. 
   First, creates the envelope and then applies the brand to it.
   Anchor text ([AutoPlace](https://support.docusign.com/en/guides/AutoPlace-New-DocuSign-Experience)) is used to position the signing fields in the documents.
1. **Applying a brand to a template**
   [Source.](./examples/eg030ApplyingBrandTemplate.sh)
   This code example demonstrates how to apply a brand you've created to a template using using the [Create Envelope](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/create) method. 
   You must have already created the template and the brand.
   Anchor text ([AutoPlace](https://support.docusign.com/en/guides/AutoPlace-New-DocuSign-Experience)) is used to position the signing fields in the documents.
1. **Bulk sending envelopes to multiple recipients**
   [Source.](./examples/eg031BulkSending.sh)
   This code example demonstrates how to send envelopes in bulk to multiple recipients using these methods:
   [Create Bulk Send List](https://developers.docusign.com/esign-rest-api/reference/BulkEnvelopes/BulkSend/createBulkSendList), 
   [Create Bulk Send Request](https://developers.docusign.com/esign-rest-api/reference/BulkEnvelopes/BulkSend/createBulkSendRequest).
   Firstly, creates a bulk send recipients list, and then creates an envelope. 
   After that, initiates bulk envelope sending.

## Installation

Download or clone this repository to your workstation

## Collect your Integration information

* Create a [DocuSign developer account](https://account-d.docusign.com/#/username) if you have not yet done so.
* Once you have a Docusign account created, make a new [**integration key**](https://admindemo.docusign.com/api-integrator-key). 
* Add in the following **redirect uri** `http://localhost:8080/authorization-code/callback`
* Find your **API Account Id:** on the same page you used to setup your [**integration key**](https://admindemo.docusign.com/api-integrator-key). 

   ![Figure](https://raw.githubusercontent.com/docusign/code-examples-bash/master/documentation/account_id.png)
 * **Signer name and email:** Remember to try the DocuSign signing ceremony using both a mobile phone and a regular
   email client.



## JWT Authentication

* create an RSA keypair on your **integration key** and copy the **private_key** into the file `config/private.key` and save it. Use JWT authentication if you intend to run a system account integration or to impersonate a different user.
* OPTIONAL: If you intend to use JWT grant authentication, set **Impersonation_user_guid** by using your own **user_account_id** found on the same page used to set your [**integration key**](https://admindemo.docusign.com/api-integrator-key). 


## OAuth Details

This launcher is a collection of bash scripts, however the OAuth mechanisms are PHP scripts that setup a small http listener on **port 8080** in order to receive the redirect callback from successful authorization with DocuSign servers that include the Authorization code or an access token in the response payload. Please ensure that any other webserver using 8080 are off so that the OAuth mechanism functions properly.  

These php scripts are integrated into the launcher and hardcode the location for the RSA private key in the case of the JWT php scripts.  

Do not delete or change the name of the private.key file located in the config directory as this will cause problems with jwt authentication. 

## Running the examples
You can see each of the various examples in action by running `bash launcher.sh` and pressing the number six to get to the option to edit your form data. 

Log in to your DocuSign account using either Authorization Code Grant or using JWT to gain an OAuth token. From there, you can pick the number that corresponds to a setting or feature you wish to try out. 

If you make a mistake, simply run the settings option again. Each code example is a standalone file, but can be reached using the launcher.sh file.

Use the bash shell to run the examples. 

The examples have been tested on Windows using the **Git-Bash** software included with the [git for Windows](https://gitforwindows.org/) open source application.

The scripts can also be used with MacOS and Linux systems.

The source files for each example are located in the `/examples` directory.


### Payments code example
To use the payments code example, first create a test payments gateway in your account.
Follow the instructions in the
[PAYMENTS_INSTALLATION.md](https://github.com/docusign/code-examples-bash/blob/master/PAYMENTS_INSTALLATION.md)
file.

Then add the payment gateway id to the code example file.



## License and additional information

### License
This repository uses the MIT License. See the LICENSE file for more information.

### Pull Requests
Pull requests are welcomed. Pull requests will only be considered if their content
uses the MIT License.
