<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>权限管理</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
<body>
<%@include file="../nav.jsp"%>

<div class="container">
    <div class="col-md-2">
        <div class="list-group">
            <a href="#" class="list-group-item">角色列表</a>
            <a href="#" class="list-group-item">权限列表</a>
            <a href="#" class="list-group-item active">管理员列表</a>
        </div>
    </div>
    <div class="col-md-9 col-md-offset-1">
        <div class="row">
            <h2>管理员列表</h2>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="">查找</button>
                    </span>
                    <input type="text" class="form-control" placeholder="Search for..." id="searchName">
                </div>
            </div>
            <div class="col-md-4">
                <input class="btn btn-success" type="button" value="增加管理员" onclick="">
                <input class="btn btn-danger" type="button" value="删除所有" onclick="">
            </div>
        </div>
        <div class="row">
            <table class="table table-bordered">
                <tr>
                    <th><input type="checkbox" class="choose_all"></th>
                    <th>序号</th>
                    <th>管理员名称</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="" var="">
                    <tr class="data">
                        <td class="datachoose"><input type="checkbox" class="single"></td>
                        <td class="id"></td>
                        <td></td>
                        <td>
                            <a href="javascript:void(0)" onclick="">显示</a> |
                            <a href="javascript:void(0)" onclick="">修改</a> |
                            <a href="#">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

<%@include file="addAdminModal.jsp"%>
<%@include file="showAdminRole.jsp"%>


</body>
</html>
