# SQL Server connection json web service
In some cases, we may need to get data sources from external web services, not from the local database. In these cases, connecting to json web services is a life saver. For this, you must have a SQL Server database with full authority (for example, with sa user).

## Do I get stuck on Cors error?

Never. Normally, when you make a json connection from your website, you are likely to experience a cors error, but this error does not come when this operation is done in the database from the background. This is because the database behaves as if it were logging into a website, not as a web service.

## How can I change the settings?

The state in the example code is a web service called with the GET method. The web service you want to connect can work with the POST method.

## Run the exact query, it gave an error. What should I do?

You need to define a new parameter in the database configuration settings. Show advanced options and Ole Automation Procedures structures are open, so you need to set the state to 1. Here are the codes you need to run;

**sp_configure 'show advanced options', 1;**

**GO**

**RECONFIGURE;**

**GO**

**sp_configure 'Ole Automation Procedures', 1;**

**GO**

**RECONFIGURE;**

**GO**
