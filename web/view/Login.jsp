<%-- 
    Document   : Login
    Created on : Jun 23, 2024, 6:26:41 PM
    Author     : ADMIN
--%>

<%-- 
    Document   : signinandsignup
    Created on : Jun 17, 2024, 8:59:23 PM
    Author     : Qcuanh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGE</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Login.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/homepage.css">
      
    </head>
    <body>
         <jsp:include page="common/navbar show.jsp"></jsp:include>
        
        <div class="container" id="container">

            <div class="form-container sign-up-container">
                <form action="#">
                    <h1>Create Account</h1>
                    <input type="text" placeholder="Name" />
                    <input type="email" placeholder="Email" />
                    <input type="password" placeholder="Password" />
                    <button>Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="Signin" method="Post">
                    <h1>Sign in</h1>
                    <input type="text" name="email" placeholder="Email" />
                    <input type="text" name="password" placeholder="Password" />
                    <tr>
                        <td></td>
                        <td style="color: red">${error}</td>
                    </tr>
                    <a href="#">Forgot your password?</a>
                    <button type="submit" value="signin">Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button class="ghost" id="signUp">Sign Up</button></div>
                </div>
            </div>
        </div>

        <jsp:include page="common/footer.jsp"></jsp:include>
        
        <script src="${pageContext.request.contextPath}/js/login.js"></script>
    </body>
</html>