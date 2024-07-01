package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Order Food For Company</title>\n");
      out.write("        \n");
      out.write("        <!-- Font Awesome CDN -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Inline CSS -->\n");
      out.write("       <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/homepage.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Navbar -->\n");
      out.write("        <div class=\"scale-container\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "common/navbar show.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"slideshow-container\">\n");
      out.write("            <a class=\"prev\" onclick=\"plusSlides(-1)\">&#10094;</a>\n");
      out.write("            <div class=\"slides\">\n");
      out.write("                <img src=\"https://i.pinimg.com/originals/e2/61/da/e261da1a49caed3c5d3a23773a8b7fd2.jpg\" alt=\"Slide 1\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slides\">\n");
      out.write("                <img src=\"https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg\" alt=\"Slide 2\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slides\">\n");
      out.write("                <img src=\"https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg\" alt=\"Slide 3\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slides\">\n");
      out.write("                <img src=\"https://th.bing.com/th/id/R.bdfc3e1b36067e500d344c22c9444e55?rik=65FnFrfQDGk2cQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f-DuNPHG1RscA%2fUi3QRNzCupI%2fAAAAAAAAKM8%2fHmOOawUBIdY%2fs1600%2fnha_hang_bun_bo_hue_3a3_201341810497148.jpg&ehk=1ZJ5sgC%2fz32EKGyunGXLfjePcUtf0rmkCgE%2bL9pbuSE%3d&risl=&pid=ImgRaw&r=0\" alt=\"Slide 4\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slides\">\n");
      out.write("                <img src=\"https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg\" alt=\"Slide 5\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slides\">\n");
      out.write("                <img src=\"https://cdn.tgdd.vn/2021/01/CookProduct/1-1200x676-22.jpg\" alt=\"Slide 6\">\n");
      out.write("            </div>\n");
      out.write("            <a class=\"next\" onclick=\"plusSlides(1)\">&#10095;</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"dots\">\n");
      out.write("            <span class=\"dot\" onclick=\"currentSlide(1)\"></span>\n");
      out.write("            <span class=\"dot\" onclick=\"currentSlide(2)\"></span>\n");
      out.write("            <span class=\"dot\" onclick=\"currentSlide(3)\"></span>\n");
      out.write("            <span class=\"dot\" onclick=\"currentSlide(4)\"></span>\n");
      out.write("            <span class=\"dot\" onclick=\"currentSlide(5)\"></span>\n");
      out.write("            <span class=\"dot\" onclick=\"currentSlide(6)\"></span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <h1>Vegan Food</h1>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg\" alt=\"Vegan Image 1\">\n");
      out.write("                <div class=\"info\">Salad chay</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://th.bing.com/th/id/OIP.tAgLGorUIdSgZwzkskX8VgHaE7?pid=ImgDet&rs=1\" alt=\"Vegan Image 2\">\n");
      out.write("                <div class=\"info\">Cơm chay</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://th.bing.com/th/id/OIP.WL3VPdaOL-HjoV4UlAlv8AHaE8?w=1024&h=683&rs=1&pid=ImgDetMain\" alt=\"Vegan Image 3\">\n");
      out.write("                <div class=\"info\">Bún tươi</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg\" alt=\"Vegan Image 4\">\n");
      out.write("                <div class=\"info\">Món ăn chay</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg\" alt=\"Vegan Image 5\">\n");
      out.write("                <div class=\"info\">Gỏi cuốn chay</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://hitasanti.com/wp-content/uploads/2020/05/hita-chay-cac-mon-chay-ngon-de-lam-5-1232x800.jpg\" alt=\"Vegan Image 6\">\n");
      out.write("                <div class=\"info\">Đậu hũ kho</div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <h1>Savoury Food</h1>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg\" alt=\"Savoury Image 1\">\n");
      out.write("                <div class=\"info\">Cơm chiên dương châu</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://th.bing.com/th/id/OIP.tAgLGorUIdSgZwzkskX8VgHaE7?pid=ImgDet&rs=1\" alt=\"Savoury Image 2\">\n");
      out.write("                <div class=\"info\">Cơm chiên trứng</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://th.bing.com/th/id/OIP.WL3VPdaOL-HjoV4UlAlv8AHaE8?w=1024&h=683&rs=1&pid=ImgDetMain\" alt=\"Savoury Image 3\">\n");
      out.write("                <div class=\"info\">Bún bò huế</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg\" alt=\"Savoury Image 4\">\n");
      out.write("                <div class=\"info\">Bún riêu</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg\" alt=\"Savoury Image 5\">\n");
      out.write("                <div class=\"info\">Chả giò</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-box\" onclick=\"showImage(this)\">\n");
      out.write("                <img src=\"https://hitasanti.com/wp-content/uploads/2020/05/hita-chay-cac-mon-chay-ngon-de-lam-5-1232x800.jpg\" alt=\"Savoury Image 6\">\n");
      out.write("                <div class=\"info\">Bánh cuốn</div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Modal for showing image -->\n");
      out.write("        <div id=\"imageModal\" class=\"modal\">\n");
      out.write("            <span class=\"close\" onclick=\"closeModal()\">&times;</span>\n");
      out.write("            <img class=\"modal-content\" id=\"modalImage\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Inline JavaScript -->\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/homepage.js\"></script>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "common/footer.jsp", out, false);
      out.write("\n");
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
