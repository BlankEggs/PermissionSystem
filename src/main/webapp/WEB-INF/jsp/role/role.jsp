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
            <a href="" class="list-group-item active">角色列表</a>
            <a href="" class="list-group-item">权限列表</a>
            <a href="" class="list-group-item">管理员列表</a>
        </div>
    </div>
    <div class="col-md-9 col-md-offset-1">
        <div class="row">
            <h2>角色列表</h2>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="">查找</button>
                    </span>
                    <input type="text" class="form-control" placeholder="Search for..." id="SearchName">
                </div>
            </div>
            <div class="col-md-4">
                <input class="btn btn-success" type="button" value="增加角色" onclick="add()">
                <input class="btn btn-danger" type="button" value="删除所有" onclick="">
            </div>
        </div>
        <div class="row">
        <table class="table table-bordered">
            <tr>
                <th><input type="checkbox" class="choose_all"></th>
                <th>序号</th>
                <th>角色名称</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${rList}" var="r">
                <tr class="data">
                    <td class="datachoose"><input type="checkbox" class="single"></td>
                    <td class="id">${r.id}</td>
                    <td>${r.name}</td>
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

<%@include file="addRoleModal.jsp"%>
<%@include file="showRolePermission.jsp"%>

</body>
<script>

    //模糊查询

    //插入角色
    function add(){
        //查询所有权限
        $.ajax({
           type:"get",
           url:"${pageContext.request.contextPath}/permission/findAllJson.action",
           success:function(pList){
               //重置添加角色模态层
               $("#myModalLabel").text("添加角色");
               $("#id").val("");
               $("#name").val("");
               $("#permissions").html("");


               //显示权限信息
               for(var i=0;i<pList.length;i++){
                   var p = pList[i];
                   $text=$("<label><input type='checkbox' id='pId' name='pid' value="+p.id+" />"+p.name+"</label><br/>");
                   $text.appendTo($("#permissions"));
               }

               //弹出添加模态层
               $("#myModal").modal();

               //修改表单的action
               $("#f").attr("action","${pageContext.request.contextPath}/role/add.action");
           }
        });
    }

    //重写表单的submit方法
    $("#f").on("submit",function(){
        if($(".checkbox :checkbox:checked").length==0) {
            //当前未选择权限，不提交表单
            alert("添加角色时，必须勾选权限")
            return false;
        }

        //提交表单
        return true;
    });

</script>
</html>
