<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书馆预约助手</title>
    <link rel="stylesheet" href="static/bootstrap.min.js">
    <script src="static/jquery.slim.min.js" ></script>
    <script src="static/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>欢迎使用图书馆预约助手！(Jackson Kim专用版)</h1>
<div style="font-size: 15px;margin-top: 10px;">本系统只能预约并签到渊明阁277号座位！</div>
<h4 class="subtitle">签到</h4>
<div style="margin-bottom: 10px">已经预约？立即为此时间段签到！</div>
<a href="https://jxut.educationgroup.cn/tsg/tsgZwIn/CB877D7A0B625565E0530100007F162F" class="btn btn-primary">立即签到!😍</a>
<h4 class="subtitle">预约</h4>
<div class="date"><%=request.getAttribute("today")%></div>
<a href="reserve?sjdId=12e76ad31716411289f351cc3b788036&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">早上1</a>
<a href="reserve?sjdId=ab548b5375e5477eb401f502d3f3dcd9&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">早上2</a>
<a href="reserve?sjdId=B938B85919CE2FA2E0530100007F477B&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">中午</a>
<a href="reserve?sjdId=BA3ECD1E0CDEA660E0530100007F31F3&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">下午1</a>
<a href="reserve?sjdId=bdc188a771724d1e9a0615eaad629417&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">下午2</a>
<a href="reserve?sjdId=8de0da75f43e45059e9960dca9f13cc8&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">晚上1</a>
<a href="reserve?sjdId=2cc5677b8c27481ba66a8f0b6b474b9b&rq=<%=request.getAttribute("today")%>" class="btn btn-primary">晚上2</a>
<div class="date"><%=request.getAttribute("tomorrow")%></div>
<a href="reserve?sjdId=12e76ad31716411289f351cc3b788036&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">早上1</a>
<a href="reserve?sjdId=ab548b5375e5477eb401f502d3f3dcd9&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">早上2</a>
<a href="reserve?sjdId=B938B85919CE2FA2E0530100007F477B&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">中午</a>
<a href="reserve?sjdId=BA3ECD1E0CDEA660E0530100007F31F3&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">下午1</a>
<a href="reserve?sjdId=bdc188a771724d1e9a0615eaad629417&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">下午2</a>
<a href="reserve?sjdId=8de0da75f43e45059e9960dca9f13cc8&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">晚上1</a>
<a href="reserve?sjdId=2cc5677b8c27481ba66a8f0b6b474b9b&rq=<%=request.getAttribute("tomorrow")%>" class="btn btn-primary">晚上2</a>
<div>试用版本</div>
</body>
<style>
    body{
        margin:50px;
    }
    .date{
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .subtitle{
        margin-top: 15px;
        margin-bottom: 15px;
    }
</style>
</html>