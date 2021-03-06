# Welcome to MateTaxi!

Simple Taxi service App , based on SOLID principles.

## Functionality
-   Add/Delete/ShowAll driver
-   Add/Delete/ShowAll manufacturer
-   Add/Delete/ShowAll car
-   Add driver to car

## Heroku demo
https://taxi-service-nvak.herokuapp.com/

You can add your login and password on https://taxi-service-nvak.herokuapp.com/drivers

## Structure
3 layers architecture
- Data access layer: DAO
- Business logic layer: Services
- Presentation layer: Controllers

## Technologies
- Java
- JDBC + MySQL
- Servlets
- JSP + JSTL
- HTML + CSS
- Apache Tomcat
- Maven
- Custom Injector

## How to run project
1. Clone the project on your IDE
2. Run the script from resources/init_db_my.sql
   Check if you don't have DB named taxi. Else configure init_db_my.sql for yourself
3. In src/main/java/taxi/util/ConnectionUtil replace URL, USERNAME, PASSWORD and DRIVER stubs with your properties.
4. Configure TomCat Local server
   Deploy at server startup "web-security:war exploded", application context "/"
5. Run project!
