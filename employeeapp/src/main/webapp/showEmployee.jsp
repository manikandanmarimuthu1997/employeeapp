<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" id="cssId" href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
	
	<title>Employee</title>
	
<style type="text/css">
#addEmployee
{
	margin: 10px;
}
</style>

<script type="text/javascript">
var currentLocation = window.location;

if(currentLocation.pathname.includes('ALTIMETRIK'))
{
	document.getElementById("cssId").href = "/ALTIMETRIK/css/bootstrap.min.css";
}
</script>

</head>

<body>
	<div class="col-md-12">
		<div class="col-md-10" id="addEmployee">
			<a href="addEmployeeForm" class="btn btn-info btn-md">Add Employee</a>
		</div>

		<div class="col-md-12" style="float: left;">
			<div class="col-md-8" style="float: left;">
				<table class="table table-bordered">
					 <thead>
					    <tr>
					      <th scope="col">Employee Id</th>
					      <th scope="col">Employee Name</th>
					      <th scope="col">Employee Email</th>
					      <th scope="col">Employee Phone No</th>
					      <th scope="col">Employee Salary</th>
					    </tr>
					 </thead>
					 <tbody>
					 	<c:choose>
					 		<c:when test="${empList.size() > 0}">
					 			<c:forEach var="emp" items="${empList}">
								    <tr>
								      <td>${emp.empid}</td>
								      <td>${emp.empname}</td>
								      <td>${emp.empemail}</td>
								      <td>${emp.empphone}</td>
								      <td>${emp.empsalary}</td>
								    </tr>
				    			</c:forEach>
					 		</c:when>
					 		<c:otherwise>
					 			<tr style="text-align: center;color: red;">
								   <td colspan="5">No details found... you must
								   	<a href="addEmployeeForm" style="color: blue;">add Employee</a> details first</td>
								</tr>      
					 		</c:otherwise>
					 	</c:choose>
					 </tbody>
				</table>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>	
</body>
</html>