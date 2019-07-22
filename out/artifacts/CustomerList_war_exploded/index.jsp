<%--
  Created by IntelliJ IDEA.
  User: ducp1605
  Date: 19/07/2019
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="khachHang.KhachHang" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Hiển thị danh sách khách hàng</title>
  </head>
  <body>
  <%
      ArrayList<KhachHang> listCustomers = new ArrayList<>();
      listCustomers.add(new KhachHang("Nguyen Minh Quan", "20/06/1999", "Ha Noi", "a"));
      listCustomers.add(new KhachHang("Mai Van Hoan", "20/08/1983", "Ha Noi", "b"));
      listCustomers.add(new KhachHang("Nguyen Van Nam", "21/08/1983", "Bac Giang", "c"));
      pageContext.setAttribute("listCustomers", listCustomers);
  %>
  <h1 style="margin-left: 400px; margin-top: 20px"><b>Danh Sach Khach Hang</b></h1>
  <table style="margin-left: 200px">
      <tr style="height: 50px;border-inline: solid">
          <td width="250px">Name</td>
          <td width="200px">Birthday</td>
          <td width="200px">Address</td>
          <td width="200px">Image</td>
      </tr>
      <c:forEach var="customer" items="#{listCustomers}">
          <tr style="height: 50px">
              <td><c:out value="${customer.name}"/></td>
              <td><c:out value="${customer.birthday}"/></td>
              <td><c:out value="${customer.address}"/></td>
              <td><c:out value="${customer.image}"/></td>
          </tr>
      </c:forEach>
  </table>
  </body>
</html>
