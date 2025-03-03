# Authentication App - Java JSP Authentication System 🔒

This is a simple **Authentication App** built with **Java**, **JSP**, **JDBC**, and deployed on **Apache Tomcat**. The application provides basic user authentication functionality with a **Login** page, **Home** page, and **Index** page.

---

## Features 🚀

- **Login Page**: A form to accept a username and password. The credentials are validated against the database using JDBC.
- **Home Page**: The main page that users are redirected to after a successful login.
- **Index Page**: A page for new users to register or get started (e.g., sign-up or information page).

---

## Technologies Used 🛠️

- **Java**: Core language for the backend logic.
- **JSP (Java Server Pages)**: Used for dynamic web content generation.
- **JDBC (Java Database Connectivity)**: Used to connect and interact with a MySQL database for user authentication.
- **Apache Tomcat**: The web server and servlet container to deploy the application.
- **MySQL**: Used to store user credentials and other necessary information.

---

## Pages in the Application 📑

1. **Login Page (`login.jsp`)**:
   - A form that accepts a username and password from the user.
   - Validates the credentials against the database using JDBC.
   - Redirects the user to the Home page upon successful login.

2. **Home Page (`home.jsp`)**:
   - A secured page that the user sees after logging in.
   - Can display the username and other relevant user data.

3. **Index Page (`index.jsp`)**:
   - A page for new users, with links to either register or learn more about the app.

---

## Prerequisites 📝

Before running the application, make sure you have the following:

- **Java JDK 8 or later**: For compiling and running the Java backend.
- **Apache Tomcat**: For deploying the web application.
- **MySQL Database**: For storing user credentials.
- **JDBC Driver**: Ensure that you have the MySQL JDBC driver (`mysql-connector-java`) configured in your project.
- **IDE (optional)**: IntelliJ IDEA, Eclipse, or any Java IDE for development.

---

## Database Setup 🗄️

1. **Create a new database** in MySQL:

   ```sql
   CREATE DATABASE auth28sep24;
