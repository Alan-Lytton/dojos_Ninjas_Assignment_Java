<%--
  Created by IntelliJ IDEA.
  User: alanlytton
  Date: 1/9/23
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <title>Add Ninja</title>
</head>
<body>
<div class="container d-flex flex-column">
    <h1 class="mb-3">Add New Ninja!</h1>
    <form:form action="/ninjas/new"  modelAttribute="ninja" method="post" cssClass="d-flex flex-column">
        <div class="container d-flex flex-column">
            <p class="text-danger"><form:errors path="firstName"/></p>
            <p>
                <form:label path="firstName">First Name: </form:label>
                <form:input path="firstName"/>
            </p>
        </div>
        <div class="container d-flex flex-column">
            <p class="text-danger"><form:errors path="lastName"/></p>
            <p>
                <form:label path="lastName">Last Name: </form:label>
                <form:input path="lastName"/>
            </p>
        </div>
        <div class="container d-flex flex-column">
            <p class="text-danger"><form:errors path="age"/></p>
            <p>
                <form:label path="age">Age: </form:label>
                <form:input type="number" path="age"/>
            </p>
        </div>
        <div class="container d-flex flex-column">
            <p class="text-danger"><form:errors path="dojo"/></p>
            <p>
                <form:label path="dojo">Dojo Name:</form:label>
                <form:select path="dojo">
                    <c:forEach var="dojo" items="${dojos}">
                        <form:option value="${dojo.id}">
                            <c:out value="${dojo.name}"/>
                        </form:option>
                    </c:forEach>
                </form:select>
            </p>
        </div>
        <input type="submit" value="Submit" class="btn btn-primary align-self-start">
    </form:form>
</div>


<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
