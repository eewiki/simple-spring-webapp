# [EEWiki.net][eewiki] Example Spring 3.x Web Application

## Purpose
The purpose of this project is two-fold: 

 1. Provide an introduction (crash-course) to web applications developed with [Java] Technology and the [Spring] Framework.
 2. Provide simple groundwork from which you can build your own custom web application.
This isn't meant to be a fully featured tutorial on [Spring] but bare-bones example using [Maven] to get you playing with the technology quickly.

## Quick Start
You can build this from the command line using _'mvn package'_ or you can load it quickly into the Java IDE of your choice (ie: Eclipse or NetBeans) and build it there.
Once built, deploy it to a Java application container of your choice (I tested this with Apache [Tomcat] 7 but it should work easily on most of them.)

Once its deployed and your application container is running, just access the /simple-spring-webapp context from a browser.
If you are running Tomcat, use http://localhost:8080/simple-spring-webapp to see the index page.

## Technology
We are using a couple different technologies to make this happen but most of them are just there to accent the purpose.

Things you have to install:

 - [Java] 6+  (Grab the JDK since you're technically developing now.)
 - [Maven] 2.2.1+ (This is your build utility. Its what makes our web app package (.war).)
 
Things Maven will get for you:

 - [SLF4J][slf4j] (This is a logging API. Its nice for printing things to your output console.)
 - [JSTL][jstl] (Java Server Pages - Standard tag library is used in the .jsp files to help generate html and urls.)
 - [Spring 3.0.7.RELEASE][Spring] (Used for dependency injection and managing your web application.)
 
  [eewiki]: http://eewiki.net
  [Java]: http://www.java.com/
  [Spring]: http://www.springsource.org/
  [Maven]: http://maven.apache.org/
  [Tomcat]: http://tomcat.apache.org/
  [slf4j]: http://slf4j.org/
  [jstl]: http://jstl.java.net/
