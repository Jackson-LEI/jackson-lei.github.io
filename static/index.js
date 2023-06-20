let nowFormat = "";
let tomorrowFormat = "";

//补日期前导0
function appendZero(str) {
    var dateString = String(str);
    dateString.length < 2 ? dateString = '0'.concat(dateString) : dateString;
    return dateString;
}

//计算日期
(function () {
    const today = new Date();
    nowFormat = today.getFullYear() + "-" + appendZero(today.getMonth() + 1) + "-" + appendZero(today.getDate());
    const tomorrow = new Date();
    tomorrow.setTime(today.getTime() + 1000 * 60 * 60 * 24);
    tomorrowFormat = tomorrow.getFullYear() + "-" + appendZero(tomorrow.getMonth() + 1) + "-" + appendZero(tomorrow.getDate());
})();

window.addEventListener('load', () => {
    //显示日期
    document.querySelector('.today .date').innerHTML = String(nowFormat);
    document.querySelector('.tomorrow .date').innerHTML = String(tomorrowFormat);

    //预约
    const todayReserve = document.querySelectorAll('.today a');
    for (var i = 0; i < todayReserve.length; i++) {
        todayReserve[i].addEventListener('click', function () {
            location.href = "http://jxut.educationgroup.cn/tsg/kzwWx/save?" +
                "rq=" + nowFormat + "&" +
                "sjdId=" + this.getAttribute('timeId') + "&" +
                "zwId=CB877D7A0B625565E0530100007F162F";
        })
    }
    const tomorrowReserve = document.querySelectorAll('.tomorrow a');
    for (var j = 0; j < tomorrowReserve.length; j++) {
        tomorrowReserve[j].addEventListener('click', function () {
            location.href = "http://jxut.educationgroup.cn/tsg/kzwWx/save?" +
                "rq=" + tomorrowFormat + "&" +
                "sjdId=" + this.getAttribute('timeId') + "&" +
                "zwId=CB877D7A0B625565E0530100007F162F";
        })
    }
})
