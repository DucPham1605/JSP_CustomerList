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
      ArrayList <KhachHang>  List = new ArrayList<>();
      List.add(new KhachHang("Griezman","1989","Ha Noi","/img/griezman.jpg"));
      List.add(new KhachHang("De Jong","1999","Ha Giang","/img/dejong.jpg"));
      List.add(new KhachHang("Griezman Jr.","2010","Ha Noi","/img/griezman.jpg"));
      List.add(new KhachHang("De Jong Jr.","2011","Quang Ngai","/img/dejong.jpg"));
      pageContext.setAttribute("List",List);

  %>

  <table>
  <tr>
      <th colspan="4"><h1>Danh sach khach hang</h1></th>
  </tr>
  <tr>
    <td>Name</td>
      <td>Date of Birth</td>
      <td>Address</td>
      <td>Profile Picture</td>
  </tr>
    <c:forEach var="customer" items="#{List}">
      <tr>
      <td><c:out value ="${customer.name}"/></td>
      <td><c:out value ="${customer.birthday}"/></td>
      <td><c:out value ="${customer.address}"/></td>
      <td><c:out value ="${customer.image}"/></td>
      </tr>
      </c:forEach>
  </table>
  </body>
</html>
