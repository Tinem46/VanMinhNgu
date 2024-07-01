/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



document.addEventListener('DOMContentLoaded', function () {
    const sidebar = document.querySelector('.sidebar');
    const content = document.querySelector('.content');

    // Kiểm tra nếu thanh sidebar đang bị thu gọn thì mở rộng
    if (sidebar.style.width === '0px' || sidebar.style.width === '') {
        sidebar.style.width = '250px';
        content.style.marginLeft = '250px';
    }
});

function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const content = document.querySelector('.content');
    if (sidebar.style.width === '0px' || sidebar.style.width === '') {
        sidebar.style.width = '250px';
        content.style.marginLeft = '250px';
    } else {
        sidebar.style.width = '0';
        content.style.marginLeft = '0';
    }
}

function showManageMenu() {
    document.getElementById('manageMenu').style.display = 'block';
    document.getElementById('manageUsers').style.display = 'none';
    document.getElementById('orderHistory').style.display = 'none';
}

function showManageUsers() {
    document.getElementById('manageMenu').style.display = 'none';
    document.getElementById('manageUsers').style.display = 'block';
    document.getElementById('orderHistory').style.display = 'none';
}

function showOrderHistory() {
    document.getElementById('manageMenu').style.display = 'none';
    document.getElementById('manageUsers').style.display = 'none';
    document.getElementById('orderHistory').style.display = 'block';
}

function loadMenuItems() {
    const menuItems = getMenuItems();
    displayMenuItems(menuItems);
}

function getMenuItems() {
    // Dummy data for demonstration
    return [
        {id: 1, name: 'Pepperoni Pizza', price: 5.59, image: 'https://via.placeholder.com/50'},
        {id: 2, name: 'Cheeseburger', price: 3.99, image: 'https://via.placeholder.com/50'}
        // Add more menu items as needed
    ];
}

function displayMenuItems(items) {
    const menuItems = document.getElementById('menuItems');
    menuItems.innerHTML = '';

    items.forEach(item => {
        const row = document.createElement('tr');
        row.innerHTML = `
                        <td><img src="${item.image}" class="item-image" alt="${item.name}"></td>
                        <td>${item.name}</td>
                        <td>$${item.price.toFixed(2)}</td>
                        <td>
                            <button class="btn-delete" onclick="deleteMenuItem(${item.id})">Delete</button>
                        </td>
                    `;
        menuItems.appendChild(row);
    });
}

function showAddItemForm() {
    document.getElementById('addItemForm').style.display = 'block';
}

function addItem(event) {
    event.preventDefault();
    const itemName = document.getElementById('itemName').value;
    const itemPrice = parseFloat(document.getElementById('itemPrice').value);
    const itemImageInput = document.getElementById('itemImage');
    const itemImage = URL.createObjectURL(itemImageInput.files[0]);

    const newItem = {id: Date.now(), name: itemName, price: itemPrice, image: itemImage};
    const menuItems = getMenuItems();
    menuItems.push(newItem);
    displayMenuItems(menuItems);

    document.getElementById('addItemForm').reset();
    document.getElementById('addItemForm').style.display = 'none';
}

function deleteMenuItem(itemId) {
    let menuItems = getMenuItems();
    menuItems = menuItems.filter(item => item.id !== itemId);
    displayMenuItems(menuItems);
}

function loadOrders() {
    const orders = getOrders();
    displayOrders(orders);
}

function getOrders() {
    // Dummy data for demonstration
    return [
        {
            id: 1,
            status: 'completed',
            date: 'June 1, 2020, 08:22 AM',
            name: 'John Doe',
            address: 'Elm Street, 23 Yogyakarta',
            total: '$5.59',
            payment: 'Cash',
            items: [
                {name: 'Pepperoni Pizza', quantity: 1, price: '$5.59', image: 'https://via.placeholder.com/50'},
            ]
        },
        {
            id: 2,
            status: 'cancelled',
            date: 'June 2, 2020, 09:15 AM',
            name: 'Jane Smith',
            address: 'Maple Avenue, 45 New York',
            total: '$3.99',
            payment: 'Credit Card',
            items: [
                {name: 'Cheeseburger', quantity: 1, price: '$3.99', image: 'https://via.placeholder.com/50'},
            ]
        }
        // Add more orders as needed
    ];
}

function displayOrders(orders) {
    const orderResults = document.getElementById('orderResults');
    orderResults.innerHTML = '';

    orders.forEach(order => {
        const orderCard = document.createElement('div');
        orderCard.className = 'order-card';

        const orderHeader = document.createElement('div');
        orderHeader.className = 'order-header';

        const orderTitle = document.createElement('div');
        orderTitle.innerHTML = `<h5>Order #${order.id}</h5><span class="order-status status-${order.status}">${order.status.charAt(0).toUpperCase() + order.status.slice(1)}</span>`;
        orderHeader.appendChild(orderTitle);

        const orderInfo = document.createElement('div');
        orderInfo.innerHTML = `<p>${order.date}</p><p><i class="fas fa-map-marker-alt"></i> ${order.address}</p>`;
        orderHeader.appendChild(orderInfo);

        const orderTotal = document.createElement('div');
        orderTotal.innerHTML = `<p class="order-total">${order.total}</p><p>${order.payment}</p>`;
        orderHeader.appendChild(orderTotal);

        orderCard.appendChild(orderHeader);

        const orderMenu = document.createElement('div');
        orderMenu.className = 'order-menu';

        order.items.forEach(item => {
            const orderItem = document.createElement('div');
            orderItem.className = 'order-item';
            orderItem.innerHTML = `<img src="${item.image}" alt="${item.name}"><span>${item.name} x${item.quantity}</span><span>+${item.price}</span>`;
            orderMenu.appendChild(orderItem);
        });

        orderCard.appendChild(orderMenu);
        orderResults.appendChild(orderCard);
    });
}

function searchOrders() {
    const searchName = document.getElementById('searchName').value.toLowerCase();
    const searchAddress = document.getElementById('searchAddress').value.toLowerCase();
    const searchDate = document.getElementById('searchDate').value;

    const orders = getOrders();
    const filteredOrders = orders.filter(order => {
        const matchName = order.name.toLowerCase().includes(searchName);
        const matchAddress = order.address.toLowerCase().includes(searchAddress);
        const matchDate = order.date.includes(searchDate);
        return matchName && matchAddress && matchDate;
    });

    displayOrders(filteredOrders);
}

function searchUsers() {
    const searchUsername = document.getElementById('searchUsername').value.toLowerCase();
    const users = getUsers();
    const filteredUsers = users.filter(user => user.username.toLowerCase().includes(searchUsername));
    displayUsers(filteredUsers);
}

function getUsers() {
    // Dummy data for demonstration
    return [
        {id: 1, username: 'john_doe', password: 'password123', registered: '2020-01-01'},
        {id: 2, username: 'jane_smith', password: 'mypassword', registered: '2021-02-15'}
        // Add more users as needed
    ];
}

function displayUsers(users) {
    const userItems = document.getElementById('userItems');
    userItems.innerHTML = '';

    users.forEach(user => {
        const row = document.createElement('tr');
        row.innerHTML = `
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td>${user.registered}</td>
                        <td>
                            <button class="btn-edit" onclick="editUser(${user.id})">Edit</button>
                        </td>
                    `;
        userItems.appendChild(row);
    });
}

function editUser(userId) {
    const users = getUsers();
    const user = users.find(u => u.id === userId);
    const newPassword = prompt(`Edit password for ${user.username}:`, user.password);
    if (newPassword) {
        user.password = newPassword;
        displayUsers(users);
    }
}
