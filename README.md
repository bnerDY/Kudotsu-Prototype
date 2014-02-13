Kudotsu-Prototype
=================

#####Topic: Prototype for Kudotsu Ceed project using MVC5, Windows Azure cloud platform and Azure storage table in C#.

The following content is the detail for the prototype.

I provide two versions for the prototype.

Model View Controller is choosen for this prototype.


#####1. The application is built with Visual studio 2010 in C# due to the old OS on my machine.(The MVC5 need Windows 7 SP1 or later) (In the folder Demo-2010)

1.It was built in ADO.NET technology. It can be executed locally by downloading the Demo-2010

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/8.jpg)
2.This is the general design view for the page.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/9.jpg)
3.ADO Local database SERVICE table for contact.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/10.jpg)
4.ADO Local database SERVICE table for login.


#####2.This version was made by MYSQL + MVC5 on azure. (In the folder Demo-2013)

#####Public address   http://martindemo2013.azurewebsites.net/ 

Prequisites:

1.Add clearDB(MySQL) first

2.Create the website using clearDB from step 1.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/5.jpg)

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/6.jpg)


3.MVC5 and MYSQL:

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/1.jpg)

4.Update the entity framework to the lastest version and set up the connect string for MYSQL develop enviroment.

5.Set up the conncentionString at web config

6.Check the table on windows azure.

![alt tag](https://raw2.github.com/bnerDY/Kudotsu-Prototype/master/Demo-images/11.jpg)

7.Create the bundle for JavaScript and corresponding css.






Copyright (c) 2014, Martin Yu(bnerDY)
All rights reserved.
