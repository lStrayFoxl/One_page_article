"use strict"

// Comment creation modal variables
let modalView = document.getElementById('modalView');
let btnView = document.getElementById("viewBtn");
let closeBtn_create = document.getElementsByClassName("close_createCom")[0];

// Comments view modal variables
let modalLeave = document.getElementById('modalLeave');
let btnLeave = document.getElementById("leaveBtn");
let closeBtn_allCom = document.getElementsByClassName("close_allCom")[0];

// Function for displaying a modal window for creating a comment
btnView.onclick = function() {
    modalView.style.display = "block";
}

// Function for displaying a modal window for viewing comments
closeBtn_create.onclick = function() {
    modalView.style.display = "none";
}

// The function of closing modal windows on a cross
closeBtn_allCom.onclick = function() {
    modalLeave.style.display = "none";
}

// Function to close modal windows when clicking on an empty space
window.onclick = function(event) {
    if (event.target == modalView) {
        modalView.style.display = "none";
    }

    if (event.target == modalLeave) {
        modalLeave.style.display = "none";
    }
}

// Function for displaying a modal window for viewing comments
btnLeave.onclick = function() {
    modalLeave.style.display = "block";
}

