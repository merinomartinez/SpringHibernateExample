<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Formulario de registro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>
 
    <h2>Ingresa los datos</h2>
  <br/>
  <br/>
   <div class="container">
    <form:form method="POST" modelAttribute="employee">
        <form:input type="hidden" path="id" id="id"/>
                <label for="name">Name: </label>
                <form:input path="name" id="name" class="form-control" placeholder="name"/>
                <form:errors path="name" cssClass="error"/>
                <label for="joiningDate">Joining Date: </label>
                <form:input path="joiningDate" id="joiningDate" class="form-control" placeholder="09/02/2018"/>
                <form:errors path="joiningDate" cssClass="error"/>
                <label for="salary">Salary: </label>
                <form:input path="salary" id="salary" class="form-control" placeholder="1236"/>
                <form:errors path="salary" cssClass="error"/>
                <label for="ssn">SSN: </label>
                <form:input path="ssn" id="ssn" class="form-control" placeholder="123225"/>
                <form:errors path="ssn" cssClass="error"/>
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                        <br/>
   						<br/>
                            <button type="submit" class="btn btn-primary">Register</button>
                        </c:otherwise>
                    </c:choose>
    </form:form>
    </div>
    <br/>
    <br/>
    <a href="<c:url value='/list' />">Listar datos</a>
</body>
</html>