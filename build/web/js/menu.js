/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function toggleMenu(day) {
    const menu = document.getElementById(day);
    const isMenuVisible = menu.style.display === 'block';
    const menus = document.querySelectorAll('.menu');
    menus.forEach(menu => {
        menu.style.display = 'none';
    });
    if (!isMenuVisible) {
        menu.style.display = 'block';
    }
}

function updateDate() {
    const currentDate = new Date();
    const options = {year: 'numeric', month: 'long', day: 'numeric'};
    document.getElementById('current-date').innerText = currentDate.toLocaleDateString('vi-VN', options);
}

document.addEventListener('DOMContentLoaded', function () {
    updateDate();
});
