# GKBLabs_Assignment

**Technologies Used**
**1IDE**
1.I have done this assignmnet by using Eclipse IDE.

**2.Programming Language**
I have done this assignment by using java.In java, I have used a concept called Java Server Pages(JSP).It will accept both WebTechnologies(HTML,CSS,JavaScript) and Java code.

To take input from the user i have created a JSP file called **UserInputForm**.
I have written a back end code in another JSP file called **InsertRecord** to connect user input form to database and store the data in a table called user_table.
I have written another JSP file called **DisplayDetails** to display the user details in the table format.

**3.Database**
  **MySQL Workbench**
I have used mySQL Workbench to store user data.
I have created a database called tejm31_databse in that i have created a table called **user_table**
The table contains 5 fields/attributes they are id,name,email,age and date of birth.

**3.set up and run** 
1.Download zip file called GKBLABSAssignmnet.
2.TO validate and insert record in to the database you have to run the JSP file called "UserInputForm".
3.Download Tomcat10 server to run the project in localhost.
4.To run the **UserInputForm.jsp** file we have to select the option called Run which on the top the IDE, 
We will have green button or select the project and right click on the project then you will get an option
called run as in that you have to select run on server.
If you are doing it for the first time then we have select the option called manually define new server in that we have to select 
Apache in that you will get different versions you have to select Tomcat v10.0 server. 
If you select that option we will have 3 fields called server host name,server name and runtime environment
in runtime environment you have to provide the path by clicking the option called Add.
If you click on Add then it open new Server Runtime Environment. In that you have a filed called installation directory in that you have to  provide the directory,
By browsing the directory of tomcat server.The directory looks something like this **"C:\Program Files\Apache Software Foundation\Tomcat 10.0"**.
After browsing the directory click on finish. Then you have to click finish option to run your code. To run it will take some time then output of the UserInputForm.jsp will be displayed
in the browser. In that you have to provide specific data to store it in database,If you provide wrong details then you get an alert message other wise you will get a message called
"record inserted successfully".

4.**To display the records in the user_table**
To display the records in the table format you have to run the file called DisplayDetails.jsp.
If you run this JSP file then you get the records which are present in the user_table other wise you get a message called "No records found".
