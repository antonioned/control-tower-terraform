# control-tower-terraform
Terraform module used for creating new AWS accounts with Control Tower setup.

## Prerequisites ##
For you to be able to run this module and for it to work, you need a few things already in place in the AWS account where you plan to run this terraform:
- AWS Organizations and Organizational Unit where you will create your new account(s) - OU is named `OU` in the module
- Control Tower and Landing Zone (for enrolling the new account(s))
- AWS SSO (for the SSO user(s))

## Usage ##
This short and simple module uses the `idealo/controltower` Terraform provider to provision a new AWS account under an Organization, enroll it within Control Tower and create and connect an SSO user to it.

How this is done is by simply adding the information needed for this into the `./control-tower/control-tower-accounts.csv` file. You can add multiple lines and create multiple accounts at once or just update the file when it is needed.

After the account has been created, the user will receive the usual email message from AWS SSO in order to set up their user (password/MFA). 
Once that is completed, the user will have the `AWSAdministratorAccess` permission set and will be able to login to the SSO portal and with that the new account as well.