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
            <a href="${pageContext.request.contextPath}/permission/findAll.action" class="list-group-item active">权限列表</a>
            <a href="#" class="list-group-item">管理员列表</a>
        </div>
    </div>
    <div class="col-md-9 col-md-offset-1">
        <div class="row">
            <h2>权限列表</h2>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="query()">查找</button>
                    </span>
                    <input type="text" class="form-control" placeholder="Search for..." id="searchName">
                </div>
            </div>
            <div class="col-md-4">
                <input class="btn btn-success" type="button" value="增加权限" onclick="add()">
                <input class="btn btn-danger"  type="button" value="删除所有" onclick="deleteAll()">
            </div>
        </div>
        <div class="row">
            <table class="table table-bordered">
                <tr>
                    <th><input type="checkbox" class="choose_all"></th>
                    <th>权限编号</th>
                    <th>权限名称</th>
                    <th>权限描述</th>
                    <th>权限url</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pList}" var="p">
                    <tr class="data">
                        <td class="datachoose"><input type="checkbox" class="single"></td>
                    	<td class="id">${p.id}</td>
                    	<td>${p.name}</td>
                    	<td>${p.desc}</td>
                    	<td>${p.url}</td>
                    	<td>
                            <a href="javascript:void(0)" class="btn btn-info" onclick="update(${p.id})">修改</a> |
                            <a href="${pageContext.request.contextPath}/permission/delete.action?id=${p.id}" class="btn btn-danger">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

<%@include file="addPermissionModal.jsp"%>

</body>
<script>

    //模糊查询
    function query(){
        var query = $("#searchName").val();
        alert(query)
        //整个页面的跳转  请求方式是get
        window.location.href="${pageContext.request.contextPath}/permission/findAll.action?query="+query;
    }

    //增加权限
    function add(){
        //清空添加权限模态层中的数据
        $("#myModalLabel").text("添加权限");
        $("#id").val("")
        $("#name").val("")
        $("#desc").val("")
        $("#url").val("")


        //显示添加权限模态层
        $("#myModal").modal();


        //指定表单的action，并提交
        $("#addbtn").click(function(){
            $("#f").attr("action","${pageContext.request.contextPath}/permission/add.action").submit();
        });

    }

    //修改权限
    function update(id){
        //查看
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/permission/findOne.action?id="+id,
            success:function(p){
                //给模态层初始化修改界面数据
                $("#myModalLabel").text("修改权限");
                $("#id").val(p.id)
                $("#name").val(p.name)
                $("#desc").val(p.desc)
                $("#url").val(p.url)

                //弹出修改的模态层
                $("#myModal").modal();

                //修改
                $("#addbtn").click(function(){
                    $("#f").attr("action","${pageContext.request.contextPath}/permission/update.action").submit();
                });
            }
        });
    }

    //批量删除权限
    function deleteAll(){
        var str = "";
        //迭代遍历所有的class名叫single的checkbox单选框
        $(".single").each(function(){
            //当前迭代到的元素是否被选中  返回true代表被选中
            if($(this).prop("checked")){
                //若被选中，获取当前记录的id值，做拼接
                var id = $(this).parents(".data").find(".id").text();
                //alert(id);
                //拼接被选中的id值
                str = str + "id="+id+"&";   //url?id=1&id=2&id=3&
            }
        });
        str = str.substr(0,str.length-1);
        //alert(str)
        window.location.href = "${pageContext.request.contextPath}/permission/delete.action?"+str;
    }

</script>
</html>
