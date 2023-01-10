<%--
  Created by IntelliJ IDEA.
  User: alanlytton
  Date: 1/9/23
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <title>New Dojo</title>
</head>
<body>
<div class="container d-flex flex-column">
<h1 class="mb-3">Add New Dojo!</h1>
<form:form action="/dojos/new"  modelAttribute="dojo" method="post" cssClass="d-flex flex-column">
    <div class="container d-flex flex-column">
        <p class="text-danger"><form:errors path="name"/></p>
        <p>
            <form:label path="name">Dojo Name: </form:label>
            <form:input path="name"/>
        </p>
    </div>
    <input type="submit" value="Submit" class="btn btn-primary align-self-start">
</form:form>
</div>


<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
