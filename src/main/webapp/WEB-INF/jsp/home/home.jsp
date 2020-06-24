<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
    <style>
        .datas .data{
            height: 180px;
            background-color: #5bc0de;
        }

        .charts .chart{
            height: 380px;
            background-color: #5bc0de;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%@include file="../nav.jsp"%>
<div class="container-fluid">
    <div class="row datas">
        <div class="col-md-3">
            <div class="col-md-10 data">
            	<h1 align="center" style="color:white">总营业额<br/>XXX</h1>
            </div>
        </div>
        <div class="col-md-3">
            <div class="col-md-10 data">
            	<h1 align="center" style="color:white">总订单量<br/>XXX</h1>
            </div>
        </div>
        <div class="col-md-3">
            <div class="col-md-10 data">
            	<h1 align="center" style="color:white">总用户数<br/>XXX</h1>
            </div>
        </div>
        <div class="col-md-3">
            <div class="col-md-10 data">
            	<h1 align="center" style="color:white">总销售额<br/>XXX</h1>
            </div>
        </div>
    </div>
    <div class="row charts">
        <div class="col-md-6">
            <div class="col-md-10 chart" id="chart1"></div>
        </div>
        <div class="col-md-6">
            <div class="col-md-10 chart" id="chart2"></div>
        </div>
        <div class="col-md-6">
            <div class="col-md-10 chart" id="chart3"></div>
        </div>
        <div class="col-md-6">
            <div class="col-md-10 chart" id="chart4"></div>
        </div>
    </div>
</div>

</body>
</html>
