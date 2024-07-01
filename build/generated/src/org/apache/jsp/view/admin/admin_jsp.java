package org.apache.jsp.view.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Admin Management</title>\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/admin.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <button class=\"btn btn-primary toggle-btn\" onclick=\"toggleSidebar()\">☰</button>\n");
      out.write("        <div class=\"sidebar\" id=\"sidebar\">\n");
      out.write("            <a href=\"HomePage.jsp\" class=\"logo\"><img src=\"https://img.freepik.com/premium-vector/food-logo-design-vector-image_887635-84.jpg\" alt=\"Logo\"></a>\n");
      out.write("            <a href=\"#menu\" onclick=\"showManageMenu()\">Manage Menu</a>\n");
      out.write("            <a href=\"#users\" onclick=\"showManageUsers()\">Manage Users</a>\n");
      out.write("            <a href=\"#history\" onclick=\"showOrderHistory()\">Order History</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("                <header>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\" style=\"text-align: center\">Admin Panel</a>\n");
      out.write("                </header>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\">Logout</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <div id=\"manageMenu\" class=\"container mt-4\" style=\"display: none;\">\n");
      out.write("                <h4>Manage Menu</h4>\n");
      out.write("                <table class=\"menu-table\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Image</th>\n");
      out.write("                            <th>Name</th>\n");
      out.write("                            <th>Price</th>\n");
      out.write("                            <th>Actions</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody id=\"menuItems\">\n");
      out.write("                        <!-- Menu items will be displayed here -->\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("                <button class=\"btn-add\" onclick=\"showAddItemForm()\">Add New Item</button>\n");
      out.write("\n");
      out.write("                <div id=\"addItemForm\" class=\"mt-4\" style=\"display: none;\">\n");
      out.write("                    <h5>Add New Menu Item</h5>\n");
      out.write("                    <form onsubmit=\"addItem(event)\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"itemName\">Name:</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"itemName\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"itemPrice\">Price:</label>\n");
      out.write("                            <input type=\"number\" class=\"form-control\" id=\"itemPrice\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"itemImage\">Image:</label>\n");
      out.write("                            <input type=\"file\" class=\"form-control-file\" id=\"itemImage\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\">Add Item</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"manageUsers\" class=\"container mt-4\" style=\"display: none;\">\n");
      out.write("                <h4>Manage Users</h4>\n");
      out.write("                <form id=\"searchUserForm\" class=\"mb-4\">\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"searchUsername\" placeholder=\"Search by Username\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-primary btn-block\" onclick=\"searchUsers()\">Search</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <table class=\"user-table\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Username</th>\n");
      out.write("                            <th>Password</th>\n");
      out.write("                            <th>Registered Since</th>\n");
      out.write("                            <th>Actions</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody id=\"userItems\">\n");
      out.write("                        <!-- User items will be displayed here -->\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"orderHistory\" class=\"container mt-4\" style=\"display: none;\">\n");
      out.write("                <h4>Order History</h4>\n");
      out.write("                <form id=\"searchForm\" class=\"mb-4\">\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"searchName\" placeholder=\"Search by Name\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"searchAddress\" placeholder=\"Search by Address\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <input type=\"date\" class=\"form-control\" id=\"searchDate\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-primary btn-block\" onclick=\"searchOrders()\">Search</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <div id=\"orderResults\">\n");
      out.write("                    <!-- Order results will be displayed here -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap JS and dependencies -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("    \n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/admin.js\"></script>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
