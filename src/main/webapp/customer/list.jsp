<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 28/12/2022
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<form method="get" action="${pageContext.request.contextPath}/customers">
  <input type="text" name="searchedName" placeholder="Search a customer">
  <input type="hidden" name="action" value="search">
  <input type="submit" value="Search">
</form>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
  <a href="/customers">Back To Customers List</a>
</p>
<p>
  <a href="${pageContext.request.contextPath}/customers?action=create">Create new customer</a>
</p>
<table border="1">
  <tr>
    <td>Name</td>
    <td>Email</td>
    <td>Address</td>
    <td>Edit</td>
    <td>Delete</td>
  </tr>
  <c:forEach items='${requestScope["customers"]}' var="customer">
    <tr>
      <td><a href="${pageContext.request.contextPath}/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
      <td>${customer.getEmail()}</td>
      <td>${customer.getAddress()}</td>
      <td><a href="${pageContext.request.contextPath}/customers?action=edit&id=${customer.getId()}">edit</a></td>
      <td><a href="${pageContext.request.contextPath}/customers?action=delete&id=${customer.getId()}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
