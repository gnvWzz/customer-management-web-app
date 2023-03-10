<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 28/12/2022
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="${pageContext.request.contextPath}/customers">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Customer information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><label for="name"></label><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
      </tr>
      <tr>
        <td>Email: </td>
        <td><label for="email"></label><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
      </tr>
      <tr>
        <td>Address: </td>
        <td><label for="address"></label><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update customer"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
<body>

</body>
</html>
