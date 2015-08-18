# blackboard-grails

## Description
This grails( Groovy on Rails) application is a complete course management system.
It uses different databases for students and subjects.
To render all the content on HTML I have used Bootstrap to give a personal style.
The project makes use of the Model-View-Controller (MVC) architecture.

## Users
* **Registration:** Users are able to register themselves 
  * Your system will check if the username already exists, the username is should be unique. If it does an error message will appear
  * Also it will display an error message if the user doesn’t type any value on the username or password or if the length of any of them is less than 5 or greater that 45.
* **Log in:** Users are able to log in to the application
  * You should only need to provide a username and password for the entire session
  * Passwords of course are shaved hashed for security.
  * These are my users’ names and passwords that I enter using BootStrap.groovy as recommended, so you can run it: (you can always register instead of using these ones)
    * **Username:** Beatriz  **Password:** fuster
    * **Username:** Jaime **Password:** tundidor
    * **Username:** Andrea **Password:** gomez
    * **Username:** Alicia **Password:** aranda
* Users are able to register for courses
  * If a student has already enrolled to a course, an error message will be displayed.
* Users can always check their enrollments by pressing a button from the top menu.

## Layout
As you can see the website doesn't look like a standard grails application.
I have used bootstrap to implement my layout. I have also introduced a logo and implemented a menu top bar to navigate through the page. All this is included in the main layout so the code is reusable.

## Searchable plugin
I have created a template to display the searchable plugin and have included it into the main layout so it appears in all pages. You can search a specific subject and the system will also provide a link to the detail view of that searched subject.

