<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Input Form</title>
</head>
<body>

<form onsubmit="return validateForm()" action="InsertRecord.jsp">
<table>
	<tr>
	<td><label>User Id:</label></td>
	<td><input type="number" placeholder="Enter Id" required="required" id="number" name="id"></td>
	</tr>
	<tr>
	<td><label>User Name:</label></td>
	<td><input type="text" placeholder="Enter Name"  required="required" name="name"></td>
	</tr>
	<tr>
	<td><label>Enter Email id:</label></td>
	<td><input type="email" placeholder="Enter Email id" required="required" name="mail"></td>
	</tr>
	<tr>
	<td>
	<label>Enter Age:</label></td>
	<td><input type="number" placeholder="Enter Age" required="required" id="age" name="age"></td>
	</tr>
	<tr>
	<td><label>Enter Date Of Birth:</label></td>
	<td><input type="date" placeholder="YYYY-MM-DD" required="required" id="birthdate" name="dob"></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit" value="Insert Data"></td>
	</tr>
	</table>

</form>

<script>
        function validateForm() {
        	var uid = document.getElementById("number").value;
            var birthdate = document.getElementById("birthdate").value;
            var age = document.getElementById("age").value;
           
			//Validate Id(Positive)
            
            if (uid <= 0 || isNaN(uid)) {
                alert("Invalid id. Please enter a positive number.");
                return false; // Prevent form submission
            }

           
            
            // Validate date of birth format (yyyy-mm-dd)
            var dateRegex = /^\d{4}-\d{2}-\d{2}$/;
            if (!dateRegex.test(birthdate)) {
                alert("Invalid date of birth format. Please use yyyy-mm-dd format.");
                return false; // Prevent form submission
            }

            // Validate age (positive number)
            if (age <= 0 || isNaN(age)) {
                alert("Invalid age. Please enter a positive number.");
                return false; // Prevent form submission
            }

            return true;
            
            
        }
 </script>
</body>
</html>