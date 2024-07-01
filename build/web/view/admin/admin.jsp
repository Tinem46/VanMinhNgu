<%-- 
    Document   : admin
    Created on : Jul 1, 2024, 1:05:12 PM
    Author     : ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Management</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    </head>
    <body>
        <button class="btn btn-primary toggle-btn" onclick="toggleSidebar()">☰</button>
        <div class="sidebar" id="sidebar">
            <a href="HomePage.jsp" class="logo"><img src="https://img.freepik.com/premium-vector/food-logo-design-vector-image_887635-84.jpg" alt="Logo"></a>
            <a href="#menu" onclick="showManageMenu()">Manage Menu</a>
            <a href="#users" onclick="showManageUsers()">Manage Users</a>
            <a href="#history" onclick="showOrderHistory()">Order History</a>
        </div>

        <div class="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <header>
                    <a class="navbar-brand" href="#" style="text-align: center">Admin Panel</a>
                </header>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Logout</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div id="manageMenu" class="container mt-4" style="display: none;">
                <h4>Manage Menu</h4>
                <table class="menu-table">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="menuItems">
                        <!-- Menu items will be displayed here -->
                    </tbody>
                </table>
                <button class="btn-add" onclick="showAddItemForm()">Add New Item</button>

                <div id="addItemForm" class="mt-4" style="display: none;">
                    <h5>Add New Menu Item</h5>
                    <form onsubmit="addItem(event)">
                        <div class="form-group">
                            <label for="itemName">Name:</label>
                            <input type="text" class="form-control" id="itemName" required>
                        </div>
                        <div class="form-group">
                            <label for="itemPrice">Price:</label>
                            <input type="number" class="form-control" id="itemPrice" required>
                        </div>
                        <div class="form-group">
                            <label for="itemImage">Image:</label>
                            <input type="file" class="form-control-file" id="itemImage" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Item</button>
                    </form>
                </div>
            </div>

            <div id="manageUsers" class="container mt-4" style="display: none;">
                <h4>Manage Users</h4>
                <form id="searchUserForm" class="mb-4">
                    <div class="form-row">
                        <div class="col">
                            <input type="text" class="form-control" id="searchUsername" placeholder="Search by Username">
                        </div>
                        <div class="col">
                            <button type="button" class="btn btn-primary btn-block" onclick="searchUsers()">Search</button>
                        </div>
                    </div>
                </form>
                <table class="user-table">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Registered Since</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="userItems">
                        <!-- User items will be displayed here -->
                    </tbody>
                </table>
            </div>

            <div id="orderHistory" class="container mt-4" style="display: none;">
                <h4>Order History</h4>
                <form id="searchForm" class="mb-4">
                    <div class="form-row">
                        <div class="col">
                            <input type="text" class="form-control" id="searchName" placeholder="Search by Name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" id="searchAddress" placeholder="Search by Address">
                        </div>
                        <div class="col">
                            <input type="date" class="form-control" id="searchDate">
                        </div>
                        <div class="col">
                            <button type="button" class="btn btn-primary btn-block" onclick="searchOrders()">Search</button>
                        </div>
                    </div>
                </form>
                <div id="orderResults">
                    <!-- Order results will be displayed here -->
                </div>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
        <script src="${pageContext.request.contextPath}/js/admin.js"></script>
</html>