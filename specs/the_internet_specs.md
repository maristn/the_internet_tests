The Internet Tests
==================

This is an executable specification file. This file follows markdown syntax.
Every heading in this file denotes a scenario. Every bulleted point denotes a step.

tags: the internet


001 - Login Success
-------------------
tags: login, success

* Open the url "https://the-internet.herokuapp.com/login"
* Type "tomsmith" for username and "SuperSecretPassword!" for password
* Click on "Login" button
* The text "You logged into a secure area!" must be displayed


002 - Login Failure - Wrong username
------------------------------------
tags: login, failure

* Open the url "https://the-internet.herokuapp.com/login"
* Type "milo" for username and "SuperSecretPassword!" for password
* Click on "Login" button
* The text "Your username is invalid!" must be displayed


003 - Login Failure - Wrong password
------------------------------------
tags: login, failure

* Open the url "https://the-internet.herokuapp.com/login"
* Type "tomsmith" for username and "milo" for password
* Click on "Login" button
* The text "Your password is invalid!" must be displayed


004 - Hovers
------------
tags: hovers

* Open the url "http://the-internet.herokuapp.com/hovers"
* Hover over the "user1" avatar picture
* The username "user1" must be displayed
* Hover over the "user2" avatar picture
* The username "user2" must be displayed
* Hover over the "user3" avatar picture
* The username "user3" must be displayed


005 - Sortable data table
-------------------------
tags: table

* Open the url "http://the-internet.herokuapp.com/tables"
* Check if the table is ordered alphabetically
* Click on "Last Name" from "Example 2" table
* Check if the table is ordered alphabetically
* Click on "Last Name" from "Example 2" table
* Check if the table is ordered alphabetically
