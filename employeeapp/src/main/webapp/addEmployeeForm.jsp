<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" id="cssId" href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
	
	<title>Employee</title>
	
<script type="text/javascript">
var currentLocation = window.location;

if(currentLocation.pathname.includes('ALTIMETRIK'))
{
	document.getElementById("cssId").href = "/ALTIMETRIK/css/bootstrap.min.css";
}
</script>

</head>
<body>
	<div class="col-md-12" style="margin: 20px;">
		<c:if test="${not empty msg}">
			<div class="col-md-8" style="text-align: center;">
				<span style="color: red;">${msg}</span>
			</div>
		</c:if>
		<div class="col-md-12" style="margin: 20px;">
			<div class="col-md-4"></div>
			<div class="col-md-4" style="margin: 20px;">
				<form:form action="addEmployee" method="post" modelAttribute="employee">
					<div class="form-group">
		                <label for="empname" class="text-info">Employee Name</label>
		                <form:input path="empname" type="text" autocomplete="off" name="empname" id="empname" class="form-control" />
		            </div>
		            <div class="form-group">
		                <label for="empemail" class="text-info">Employee Email</label>
		                <form:input path="empemail" type="text" autocomplete="off" name="empemail" id="empemail" class="form-control" />
		            </div>
		            <div class="form-group">
		                <label for="empphone" class="text-info">Employee Phone No</label>
		                <form:input path="empphone" type="text" autocomplete="off" name="empphone" id="empphone" class="form-control" />
		            </div>
		            <div class="form-group">
		                <label for="empsalary" class="text-info">Employee Salary</label>
		                <form:input path="empsalary" type="text" autocomplete="off" name="empsalary" id="empsalary" class="form-control" />
		            </div>
		            <div class="form-group" style="float: left;">
						<a href="showEmployee" class="btn btn-info btn-md">Show Employee</a>
					</div>
		            <div class="form-group" style="float: right;">
		                <button class="btn btn-info btn-md" type="submit" >Add Employee</button>
		            </div>
				</form:form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</body>
</html>