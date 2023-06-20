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