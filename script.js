"use strict"

let modalView = document.getElementById('modalView');
let btnView = document.getElementById("viewBtn");
let closeBtn_create = document.getElementsByClassName("close_createCom")[0];

let modalLeave = document.getElementById('modalLeave');
let btnLeave = document.getElementById("leaveBtn");
let closeBtn_allCom = document.getElementsByClassName("close_allCom")[0];

btnView.onclick = function() {
    modalView.style.display = "block";
}

closeBtn_create.onclick = function() {
    modalView.style.display = "none";
}

closeBtn_allCom.onclick = function() {
    modalLeave.style.display = "none";
}

window.onclick = function(event) {
    if (event.target == modalView) {
        modalView.style.display = "none";
    }

    if (event.target == modalLeave) {
        modalLeave.style.display = "none";
    }
}

btnLeave.onclick = function() {
    modalLeave.style.display = "block";
}

