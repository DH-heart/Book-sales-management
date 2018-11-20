<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/5/4
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
      <script>
          $(function () {
              $("#checkbox_id").click(function () {
                  if (this.checked) {
                      $("#Tr_ID td input[type='checkbox']").each(function () {
                          this.checked=true;
                      })
                  }else{
                      $("#Tr_ID td input[type='checkbox']").each(function () {
                          this.checked=false;
                      })
                  }
              })
          })
      </script>
  </head>
  <body>
 <form action="/addCustomer">
   用户名：<input type="text" name="username"><br>
   工作：<input type="text" name="jobs"><br>
   电话：<input type="text" name="phone"><br>
   <input type="submit" value="添加顾客">
 </form>
 <form action="/deleteCustomer">
     根据id号删除用户信息：<input type="text" name="id"><br>
     <input type="submit" value="删除用户信息">
 </form>
 <form action="/findCustomerById">
     根据id号查询用户信息：<input type="text" name="id"><br>
     <input type="submit" value="查询用户信息">
 </form>


 <form action="/findCustomerByNameAndJobs">
     查询用户信息：<br>
     用户名：<input type="text" name="username">     工作：<input type="text" name="jobs">
     电话：<input type="text" name="phone"><br>
     <input type="submit" value="查询用户信息">

 </form>

 <form action="/updateCustomer">

     <input  name="id" value="${customer.id}"><br>
     <input type="text" name="username">  <br>
     <input type="text" name="jobs"><br>
     <input type="text" name="phone"><br>
     <input type="submit" value="更新用户信息">

 </form>

<h3>删除</h3>
  <a href="/findall">显示所有</a>

  <table>
      <tr>
          <td><input type="checkbox" id="checkbox_id"></td>
          <td>id</td>
          <td>usranme</td>
          <td>jobs</td>
          <td>phnoe</td>
      </tr>
      <form action="/del" method="post">
      <c:forEach items="${customers}" var="i">
          <tr id="Tr_ID">
              <td><input type="checkbox" name="ids" value="${i.id}"></td>
              <td>${i.id}</td>
              <td>${i.username}</td>
              <td>${i.jobs}</td>
              <td>${i.phone}</td>
          </tr>
      </c:forEach>
          <input type="submit" value="删除">
      </form>
  </table>


  </body>
</html>
