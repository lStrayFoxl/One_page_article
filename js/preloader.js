"use strict"

// Preloader variable
let preloader =  document.querySelector('.preloader');

// The function to close the preloader when the page is fully loaded
window.addEventListener('load', () => {
    preloader.classList.add('done');
    setTimeout(() => {
        preloader.remove();
    }, 1000);
});