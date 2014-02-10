Kudotsu-Prototype
=================

#####Topic: Prototype for Kudotsu Ceed project using MVC5, Windows Azure cloud platform and Azure storage table in C#.

The following content is the detail for the prototype.

I provide two versions for the prototype.

Model View Controller is choosen for this prototype.


#####1. The application is built with Visual studio 2010 in C# due to the old OS on my machine.(The MVC5 need Windows 7 SP1 or later) (In the folder Demo-2010)

It was built in ADO.NET technology. It can be executed locally by downloading the Demo-2010

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/8.jpg)
This is the general view for the page.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/9.jpg)
Local database table for contact.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/10.jpg)
Local database table for login.


#####2.This version was made by MYSQL + MVC5 on azure. (In the folder Demo-2013)

#####Public address   http://martindemo2013.azurewebsites.net/ 

Prequisites:

Add clearDB(MySQL) first

Create the website using clearDB

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/5.jpg)

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/6.jpg)


MVC5 and MYSQL:

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/1.jpg)

Update the entity framework to the lastest version and set up the connect string for MYSQL develop enviroment.

Set up the conncentionString at web config


![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/2.jpg)

Add some fields to the register pages except the dropdownlist(state) and image upload

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/4.jpg)

Solve the drop down list issue by using controller

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/3.jpg)



![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/7.jpg)

Check the table on windows azure.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/11.jpg)

Create the bundle for jquery.


##### I am not sure about why my connection to the MYSQL is ok, but I can not create table to store account information on the azure clearDB(MYSQL). Nevertheless, I provide the application using ADO.NET to show my database and SQL knowledge.



Copyright (c) 2014, Martin Yu(bnerDY)
All rights reserved.
