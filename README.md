# Salesforce DX Project: Hello World of running an Salesforce Apex class inside a Coder cloud container

##### GitHub mark.demo.coder.com marktmilligan/salesforce CLI image with coder.yaml ( environment-as-code template )
[![Open in Coder](https://cdn.coder.com/embed-button.svg)](https://mark.demo.coder.com/wac/build?project_oauth_service=github&template_oauth_service=github&project_url=git@github.com:mtm20176/salesforce_hw.git&template_url=https://github.com/mtm20176/salesforce_wac&template_ref=master)

Steps to follow
https://trailhead.salesforce.com/en/content/learn/projects/quickstart-vscode-salesforce/use-vscode-for-salesforce

Steps to get going:

## VS Code Extensions for Salesforce
There are 8, and are included in the coder.yaml used in the workspace creation button above 
resources: https://marketplace.visualstudio.com/items?itemName=salesforce.salesforcedx-vscode

## Create a Project
1. Press Command + Shift + P on Mac or Ctrl + Shift + P on Windows to make the command palette appear.
Make sure the new prompt starts with >
2. Type SFDX: Create Project and press Enter to select the standard template.
3. Type the project name salesforce_hw and press Enter.

This step can be optional since the project is created in the repo. In which case close any project/workspace and open exactly in the SFDC repo checked out.

## Search your files and add orgName
1. Press Command + P on Mac or Ctrl + P on Windows to make the search palette appear. This shifts the focus to search files.
Type project-scratch-def.json into the field.
Click the result to open the file.
2. Change the orgName value (after the : and in between the “”) to Learning VS Code.
3. Save the file by pressing Command + S on Mac, Control + S on Windows.

## Authenticate to your Salesforce playground
1. Press Command + Shift + P on Mac or Ctrl + Shift + P on Windows to make the command palette appear.
Type SFDX: Authorize an Org.
To accept the default login URL, press Enter.
Enter the alias Coder.
2. Notice that your default browser opens a new Salesforce login window. Log in to your playground using your playground username and password retrieved from the last step.
When you are asked to grant access to the connected app, click to allow.  

## Create an Apex Class
1. Click the Explorer icon explorer icon in Visual Studio Code to expand the force-app folder.
Under the salesforce_hw directory, click force-app to show its folder tree.
2. Press Command + Shift + P on Mac or Ctrl + Shift + P on Windows to make the command palette appear.
3. Type SFDX: Create Apex Class.
Enter the name AccountController.
If VS Code asks, select force-app/main/default/classes as the directory you wish to add AccountController.cls to.
4. In the newly opened AccountController.cls file, replace the default code with the following:

```
public with sharing class AccountController {
  public static List<Account> getAllActiveAccounts() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
}
```
5. Save your file.

## Query Salesforce using API - for account records 
1. In line 3 of the code, highlight the query SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'
2. Press Command + Shift + P on Mac or Ctrl + Shift + P on Windows to make the command palette appear.
3. Search for SFDX:Execute SOQL Query with Currently Selected Text.
Press Enter.
4. Select REST API and press Enter.
5. In the Output tab of the integrated terminal window, review the results of your query. The window should state a summary that says: SFDX: Execute SOQL Query ... ended with exit code 0. This means it successfully ran.

## Deploy the Apex Class to Salesforce 
1. Right click the classes folder.
2. Click SFDX: Deploy Source to Org.
3. In the Output tab of the integrated terminal, view the results of your deployment. You should have also received a notice that states: SFDX: Deploy Source to Org ... ended with exit code 0. This means it successfully ran.

## BACKGROUND

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

###### How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

###### Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

###### Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
