<%--
  Created by IntelliJ IDEA.
  User: bupt
  Date: 3/13/17
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>springmvc user</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>SpringMvc</h1>
    </hr>
    <h3>all users <a href="/admin/users/add" type="button" class="btn btn-primary btn-sm"></a> </h3>

    <c:if test="${empty userList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>userempty<a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">add</a>
        </div>
    </c:if>

    <c:if test="${!empty userList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>nickname</th>
                <th>name</th>
                <th>passwd</th>
                <th>action</th>
            </tr>

            <c:forEach items="${userList}" var="user">
                <tr>
                    <th>${user.id}</th>
                    <th>${user.nickname}</th>
                    <th>${user.firstname} ${user.lastname}</th>
                    <th>${user.password}</th>
                    <td>
                        <a href="/admin/users/show/${user.id}" type="button" class="btn btn-primary btn-success">detail</a>
                        <a href="/admin/users/update/${user.id}" type="button" class="btn btn-primary btn-warning">midify</a>
                        <a href="/admin/users/delete/${user.id}" type="button" class="btn btn-primary btn-danger">delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
