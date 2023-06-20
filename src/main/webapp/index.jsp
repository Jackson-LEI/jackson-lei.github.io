<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书馆预约助手</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="static/bootstrap.min.js">
    <script src="static/jquery.slim.min.js" ></script>
    <script src="static/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>欢迎使用图书馆预约助手！(Jackson Kim专用版)</h1>
<div style="font-size: 15px;margin-top: 10px;">本系统只能预约并签到渊明阁277号座位，建议使用微信客户端打开此网站！</div>
<h4 class="subtitle">签到</h4>
<div style="margin-bottom: 10px">已经预约？立即为此时间段签到！</div>
<a href="https://jxut.educationgroup.cn/tsg/tsgZwIn/CB877D7A0B625565E0530100007F162F" class="btn btn-primary">立即签到!😍</a>
<h4 class="subtitle">预约</h4>
<section class="today">
    <div class="date"></div>
    <a timeId="12e76ad31716411289f351cc3b788036" class="btn btn-primary">早上1</a>
    <a timeId="ab548b5375e5477eb401f502d3f3dcd9" class="btn btn-primary">早上2</a>
    <a timeId="B938B85919CE2FA2E0530100007F477B" class="btn btn-primary">中午</a>
    <a timeId="BA3ECD1E0CDEA660E0530100007F31F3" class="btn btn-primary">下午1</a>
    <a timeId="bdc188a771724d1e9a0615eaad629417" class="btn btn-primary">下午2</a>
    <a timeId="8de0da75f43e45059e9960dca9f13cc8" class="btn btn-primary alter">晚上1</a>
    <a timeId="2cc5677b8c27481ba66a8f0b6b474b9b" class="btn btn-primary alter">晚上2</a>
</section>
<section class="tomorrow">
    <div class="date"></div>
    <a timeId="12e76ad31716411289f351cc3b788036" class="btn btn-primary">早上1</a>
    <a timeId="ab548b5375e5477eb401f502d3f3dcd9" class="btn btn-primary">早上2</a>
    <a timeId="B938B85919CE2FA2E0530100007F477B" class="btn btn-primary">中午</a>
    <a timeId="BA3ECD1E0CDEA660E0530100007F31F3" class="btn btn-primary">下午1</a>
    <a timeId="bdc188a771724d1e9a0615eaad629417" class="btn btn-primary">下午2</a>
    <a timeId="8de0da75f43e45059e9960dca9f13cc8" class="btn btn-primary alter">晚上1</a>
    <a timeId="2cc5677b8c27481ba66a8f0b6b474b9b" class="btn btn-primary alter">晚上2</a>
</section>
<hr>
<a href="https://jxut.educationgroup.cn/sso/auth?redirect=%2Fapi%3Fscope%3Dbase%26response_type%3Dcode%26state%3Ddefault%26redirect_uri%3Dhttps%253A%252F%252Fjxut.educationgroup.cn%252Ftsg%252FoauthApi%252FgetAccessToken%253Fredirect%253D%25252FkzwWx%25252Findex%2526authType%253Dauth%26client_id%3DA0002" class="btn btn-primary alter">前往图书馆预约官网</a>
<div style="margin-top: 10px">试用版本</div>
</body>
<style>
    @media screen and (min-width: 320px){
        body{
            margin:20px;
        }
    }
    @media screen and (min-width: 640px) {
        body{
            margin:50px;
        }
    }
    .date{
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .subtitle{
        margin-top: 15px;
        margin-bottom: 15px;
    }
    a{
        margin-top:10px;
    }
</style>
<script>
    let nowFormat = "";
    let tomorrowFormat = "";
    (function () {
        const today = new Date();
        nowFormat = today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
        document.querySelector('.today .date').innerHTML =String(nowFormat);
        const tomorrow = new Date();
        tomorrow.setTime(today.getTime() + 1000 * 60 * 60 * 24);
        tomorrowFormat = tomorrow.getFullYear() + "-" + (tomorrow.getMonth() + 1) + "-" + tomorrow.getDate();
        document.querySelector('.tomorrow .date').innerHTML =String(tomorrowFormat);
    })();

    const todayReserve = document.querySelectorAll('.today a');
    for(var i=0;i<todayReserve.length;i++){
        todayReserve[i].addEventListener('click',function (){
            location.href = "http://jxut.educationgroup.cn/tsg/kzwWx/save?" +
            "rq="+nowFormat+"&" +
            "sjdId="+this.getAttribute('timeId')+"&" +
            "zwId=CB877D7A0B625565E0530100007F162F";
        })
    }

    const tomorrowReserve = document.querySelectorAll('.tomorrow a');
    for(var j=0;j<tomorrowReserve.length;j++){
        tomorrowReserve[j].addEventListener('click',function (){
            location.href = "http://jxut.educationgroup.cn/tsg/kzwWx/save?" +
            "rq="+tomorrowFormat+"&" +
            "sjdId="+this.getAttribute('timeId')+"&" +
            "zwId=CB877D7A0B625565E0530100007F162F";
        })
    }
</script>
</html>