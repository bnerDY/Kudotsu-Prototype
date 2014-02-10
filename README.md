Kudotsu-Prototype
=================

Topic: Prototype for Kudotsu Ceed project using MVC5, Windows Azure cloud platform and Azure storage table in C#.

The following content is the detail for the prototype.

I provide two versions for the prototype.

Model View Controller is choosen for this prototype.


1. The application is built with Visual studio 2010 in C# due to the old OS on my machine.(The MVC5 need Windows 7 SP1 or later) (Demo-2010)


2.This version was made by MYSQL + MVC5 on azure. (Demo-2013)

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
Copyright (c) 2014, Martin Yu(bnerDY)
All rights reserved.
