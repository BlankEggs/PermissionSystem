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
            <a href="${pageContext.request.contextPath}/role/findAll.action" class="list-group-item">角色列表</a>
            <a href="${pageContext.request.contextPath}/permission/findAll.action" class="list-group-item">权限列表</a>
            <a href="${pageContext.request.contextPath}/admin/findAll.action" class="list-group-item active">管理员列表</a>
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
                        <button class="btn btn-default" type="button" onclick="findByQuery()">查找</button>
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
                <c:forEach items="${adminList}" var="admin">
                    <tr class="data">
                        <td class="datachoose"><input type="checkbox" class="single"></td>
                        <td class="id">${admin.mId}</td>
                        <td>${admin.mName}</td>
                        <td>
                            <a href="javascript:void(0)" class="btn btn-info" onclick="showAdmin(${admin.mId})">显示</a> |
                            <a href="javascript:void(0)" class="btn btn-warning" onclick="">修改</a> |
                            <a href="#" class="btn btn-danger">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

<%@include file="addAdminModal.jsp"%>
<%@include file="showAdminRole.jsp"%>

<script>

    //模糊查询
    function findByQuery(){
        var query = $("#searchName").val();
        window.location.href="${pageContext.request.contextPath}/admin/findAll.action?query="+query;
    }

    //显示
    function showAdmin(id) {
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/admin/findOne.action?id="+id,
            success:function (admin) {
                //初始化显示管理员角色及权限页面信息
                $("#myAdminModal").text(admin.mName);
                $("#adminRolePermissions").html("");

                //当前管理员拥有的角色列表
                var roleList = admin.roleList;
                if(roleList.length==0){
                    $("#adminRolePermissions").html("<tr><td colspan='2'>当前管理员未分配角色</td></tr>");
                }else{
                    for(var i=0;i<roleList.length;i++){
                        //当前角色
                        var role = roleList[i];
                        //当前角色拥有的权限列表
                        var pList = role.pList;
                        if(pList.length==0){
                            //显示角色信息，此时角色没有分配权限
                            $text = $("<tr><td>"+role.name+"</td><td>当前角色未分配权限</td></tr>");
                            $text.appendTo("#adminRolePermissions");
                        }else{
                            for(var j=0;j<pList.length;j++){
                                //当前权限
                                var p = pList[j];
                                if(j==0){
                                    $text = $("<tr><td rowspan='"+pList.length+"'>"+role.name+"</td><td>"+p.desc+"</td></tr>");
                                }else{
                                    $text = $("<tr><td>"+p.desc+"</td></tr>");
                                }
                                $text.appendTo("#adminRolePermissions");
                            }
                        }
                    }
                }

                //弹出模态层
                $("#myRoleModal").modal();
            }
        });
    }

</script>

</body>
</html>
