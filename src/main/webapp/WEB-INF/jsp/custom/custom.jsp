<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>会员管理</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="../nav.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-lg-6">
            <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="">查找</button>
                    </span>
                <input type="text" class="form-control" placeholder="Search by name" id="searchName">
            </div>
        </div>
        <div class="col-md-4 col-lg-4">
            <input class="btn btn-danger" type="button" value="删除所有" onclick="" />
        </div>
    </div>
    <div class="row">
        <table class="table table-bordered">
            <tr>
                <th><input type="checkbox"></th>
                <th>会员编号</th>
                <th>会员名称</th>
                <th>会员头像</th>
                <th>会员邮箱</th>
                <th>会员电话</th>
                <th>会员等级</th>
                <th>会员积分</th>
                <th>操作</th>
            </tr>
            <c:forEach items="" var="">
                <tr class="data">
                    <td class="datachoose"><input type="checkbox" class="single"></td>
                    <td class="id"></td>
                    <td></td>
                    <td><img src=""/></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a href="javascript:void(0)" onclick="">查看订单</a>
                        <a href="#">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>


<%@include file="showOrder.jsp"%>

</body>
</html>
