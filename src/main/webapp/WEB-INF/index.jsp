<%--
  Created by IntelliJ IDEA.
  User: alanlytton
  Date: 1/9/23
  Time: 1:07 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <title>Dojos</title>
</head>
<body>
<div class="container">
    <h1>Dojos:</h1>
    <table class="table table-bordered mt-3 mb-3">
        <thead>
        <tr>
            <th>Dojo Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dojo" items="${dojos}">
        <tr>
            <td><c:out value="${dojo.name}"/></td>
            <td><a href="/dojos/show/${dojo.id}">View</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/dojos/new" class="btn btn-primary">Create Dojo</a>
    <a href="/ninjas/new" class="btn btn-primary">Create Ninja</a>

</div>


<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
