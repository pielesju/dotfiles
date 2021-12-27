function getDate() {
    var cDate = new Date();
    var cDay = cDate.getDate();
    var cMonth = cDate.getMonth() + 1;
    var cYear = cDate.getFullYear();

    var cMin = cDate.getMinutes();
    var cHour = cDate.getHours();
    document.getElementById("date").innerHTML =
        (cDay + "." + cMonth + "." + cYear).toString();

    document.getElementById("time").innerHTML =
        (cHour + ":" + cMin).toString();
}                                                                   
