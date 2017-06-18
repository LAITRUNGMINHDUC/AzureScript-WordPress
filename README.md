# Installing WordPress on Microsoft Azure Web App for FREE
#### Without MySQL Database, FTP, or downloading any files to your computer

## Quick Script
```
cd "D:\home\site\wwwroot" & 
curl -L -O "https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/SetupWP.bat" & 
SetupWP.bat & rm SetupWP.bat
```

## Introduction

As we know, there are many ways to create a **WordPress** website on **Microsoft Azure**, such as:
- (1) Using Azure Gallery
- (2) Download the installation and using FTP to upload the uncompressed files
- (3) Using Git in Automation 

However, if you are using FREE Account of Microsoft Azure (Microsoft Imagine subscription, for example), sometimes you might not deploy WordPress successfully and it might take you hours to fix it.

During nearly 2-year experience as Microsoft Azure trainer for Students in Vietnam (I am a member of Microsoft Student Partners Vietnam), I have seen many unsuccessful scenarios such as: 
- University blocks FTP port and blocks some Web-to-FTP sites.
- University's Internet connection is slow.
- Microsoft Imagine subscription cannot create MySQL Database.

Therefore, I have made a small batch script and I would love to propose a solution for _Deploying WordPress on MS Azure **without** using Azure Gallery, FTP, Git, MySQL or downloading any files to your computer_.

## Tutorial

You have to login to your Azure Account first.

### Step 1: Create Azure Web App

Looking at the Left Panel and click New (Plus icon with Green color)
- Looking for Web + Mobile
- Choose Web App
- Fill the Form (F1 - Free for App Service Plan)

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/WebApp.PNG)


### Step 2: Go to Debug Console of Azure Kudu 

Currently, my new Web App has the URL: http://duchihi-ecom.azurewebsites.net

Therefore, my Azure Kudu URL will be: https://duchihi-ecom.scm.azurewebsites.net

Your Azure Kudu URL might be: **https://<Your_App_Name>.scm.azurewebsites.net**

After the Azure Kudu GUI appeared, look at the header, then choose Debug Console. At here, choose CMD.

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/Kudu.png)

### Step 3: Execute the Script in CMD

Paste the script below to the CMD and Run it
```
cd "D:\home\site\wwwroot" & 
curl -L -O "https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/SetupWP.bat" & 
SetupWP.bat
```

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/PasteScript.png)

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/GetWP.png)

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/Extract.png)

#### What just happened?
- My script downloaded the latest WordPress package and uncompressed it into **D:\home\site\wwwroot\wordpress**. 
- It downloaded a pre-config of **wp-config.php** file for MySQL in-app.
- It replaced a **web.config** file for beatifying WordPress URI, forcing HTTPS, and DOS mitigation.

### Step 4: Turn On MySQL in-app in Azure Web App

- Go back to Azure Portal and click to your Web App. 
- Then searching for **MySQL in app**
- Turn ON MySQL in app
- Save it

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/MySQL-inapp.png)

### Step 5: Config Virtual Path to WordPress source

- Clear the search box and search: **Application Settings**
- Scroll to the end and look for **Virtual applications and directories**
- Replace your current value with ```site\wwwroot\wordpress```
- Save it

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/AppSettings.png)

## Test Your WordPress

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/ConfigWP-1.PNG)

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/ConfigWP-2.PNG)

![](https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/docs/ConfigWP-3.PNG)


## Congratulations

If you have any problems, please send an email to me at: minhduc.msp@outlook.com

Demo Web App: https://duchihi-ecom.azurewebsites.net/

Thank you.
