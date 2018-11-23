package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import shivi.javaBeans.resultBean;

public final class resultProcess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write(" ");
      shivi.DataAccessObject.DbOperations dao = null;
      synchronized (_jspx_page_context) {
        dao = (shivi.DataAccessObject.DbOperations) _jspx_page_context.getAttribute("dao", PageContext.PAGE_SCOPE);
        if (dao == null){
          dao = new shivi.DataAccessObject.DbOperations();
          _jspx_page_context.setAttribute("dao", dao, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>result</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("#main\r\n");
      out.write("{\r\n");
      out.write("width: 100%;\r\n");
      out.write("height: 100%;\r\n");
      out.write("border: 2px solid white;\r\n");
      out.write("}\r\n");
      out.write("#homeHead\r\n");
      out.write("{\r\n");
      out.write("background-color: limegreen;\r\n");
      out.write("border-radius:0px 0px 20px 20px;\r\n");
      out.write("}\r\n");
      out.write("#blank1\r\n");
      out.write("{\r\n");
      out.write("width: 100%;\r\n");
      out.write("height: 5%;\r\n");
      out.write("}\r\n");
      out.write("#homeBody\r\n");
      out.write("{\r\n");
      out.write("background-color: limegreen;\r\n");
      out.write("border-top:2px solid;\r\n");
      out.write("width: 100%;\r\n");
      out.write("height: 600px;\r\n");
      out.write("border: 2px;\r\n");
      out.write("border-color:limegreen;\r\n");
      out.write("border-radius:20px 20px 20px 20px;\r\n");
      out.write("}\r\n");
      out.write("#homeBody img\r\n");
      out.write("{\r\n");
      out.write("padding-left: 35%;\r\n");
      out.write("padding-top: 3%;\r\n");
      out.write("}\r\n");
      out.write("#vote\r\n");
      out.write("{\r\n");
      out.write("border:2px;\r\n");
      out.write("border-color: limegreen;\r\n");
      out.write("padding-top:1%;\r\n");
      out.write("padding-left: 45%;\r\n");
      out.write("padding-bottom:1%;\r\n");
      out.write("background-color: limegreen;\r\n");
      out.write("border-radius:0px 0px 20px 20px;\r\n");
      out.write("}\r\n");
      out.write("#blank2\r\n");
      out.write("{\r\n");
      out.write("width: 100%;\r\n");
      out.write("height:30px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("<div id=\"main\">\r\n");
      out.write("<div id=\"homeHead\">\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"blank1\"></div>\r\n");
      out.write("<div id=\"homeBody\">\r\n");
 String a=request.getParameter("admin");
String p=request.getParameter("password");
if(a.equalsIgnoreCase("admin") && p.equalsIgnoreCase("admin")) 
{
	resultBean rb=dao.declearResult();
	
      out.write("\r\n");
      out.write("\t<table border=\"2\" bgcolor=\"yellow\">\r\n");
      out.write("\t<caption>ELECTION RESULT</caption>\r\n");
      out.write("\t<tr><th>PARTY</th><th>VOTE</th></tr>\r\n");
      out.write("\t<tr><td>BJP</td><td>");
out.print(rb.getBJP());
      out.write("</td></tr>\r\n");
      out.write("\t<tr><td>INC</td><td>");
out.print(rb.getINC());
      out.write("</td></tr>\r\n");
      out.write("\t<tr><td>SP</td><td>");
out.print(rb.getSP());
      out.write("</td></tr>\r\n");
      out.write("\t<tr><td>BSP</td><td>");
out.print(rb.getBSP());
      out.write("</td></tr>\r\n");
      out.write("\t<tr><td>RLD</td><td>");
out.print(rb.getRLD());
      out.write("</td></tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\tWinner: ");
out.print(rb.getWinner());
      out.write(" vote:");
out.print(rb.getWinnerVote());
      out.write('\r');
      out.write('\n');
      out.write('	');

	}
else
{
	out.print("invalid admin");
}

      out.write("   \r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"vote\">                                                   \r\n");
      out.write("<a href=\"voterLogin.jsp\"><button>GO FOR VOTE</button></a>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"blank2\"></div>\r\n");
      out.write("<div id=\"homeFoot\">\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
