/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.22
 * Generated at: 2020-01-04 05:58:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import java.util.ArrayList;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.jsoup.nodes.Document;
import java.io.*;
import org.jsoup.*;
import chart.Info;

public final class youtube_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("org.jsoup");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("org.openqa.selenium.chrome.ChromeOptions");
    _jspx_imports_classes.add("org.openqa.selenium.chrome.ChromeDriver");
    _jspx_imports_classes.add("org.openqa.selenium.By");
    _jspx_imports_classes.add("org.openqa.selenium.WebDriver");
    _jspx_imports_classes.add("org.jsoup.nodes.Element");
    _jspx_imports_classes.add("org.jsoup.nodes.Document");
    _jspx_imports_classes.add("chart.Info");
    _jspx_imports_classes.add("org.openqa.selenium.WebElement");
    _jspx_imports_classes.add("org.jsoup.select.Elements");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\" initial-scale=\"1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\" integrity=\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\" crossorigin=\"anonymous\">\r\n");
      out.write("<title>youtube-chart</title>\r\n");
      out.write("<style>\r\n");
      out.write("\tbody{\r\n");
      out.write("\t\tbackground-image: url(\"images/background-chart.jpg\");\r\n");
      out.write("\t}\r\n");
      out.write("\t#card{\r\n");
      out.write("\t\tbackground-color: rgba( 255, 255, 255, 0.9 );\r\n");
      out.write("\t}\r\n");
      out.write("\t#youtube{\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");

		String userID = null;
		if(session.getAttribute("userID")!=null){
			userID = (String) session.getAttribute("userID");
		}
	
      out.write("\r\n");
      out.write("<!-- navbar 시작 -->\r\n");
      out.write("\t<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("  <a class=\"navbar-brand\" href=\"main.jsp\">차트분석기</a>\r\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("  </button>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("      <li class=\"nav-item active\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"bbs.jsp\">게시판 <span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item dropdown\">\r\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("         \t<span class=\"fas fa-music\"></span>&nbsp;Chart\r\n");
      out.write("        </a>\r\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"melon.jsp\">Melon</a>\r\n");
      out.write("          <div class=\"dropdown-divider\"></div>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"genie.jsp\">Genie</a>\r\n");
      out.write("          <div class=\"dropdown-divider\"></div>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"bugs.jsp\">Bugs</a>\r\n");
      out.write("          <div class=\"dropdown-divider\"></div>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"youtube.jsp\">YouTube</a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </li> \r\n");
      out.write("    </ul>\r\n");
      out.write("    ");

    	if(userID==null){
    
      out.write("  \r\n");
      out.write("    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("      <li><a href=\"join.jsp\" class=\"btn btn-outline-primary\"><span class=\"fas fa-user\"></span> Sign Up</a></li>\r\n");
      out.write("      <li>&nbsp;&nbsp;&nbsp;</li>\r\n");
      out.write("      <li><a href=\"login.jsp\" class=\"btn btn-outline-primary\"><span class=\"fas fa-sign-in-alt\"></span> Login</a></li>\r\n");
      out.write("    </ul>  \t\r\n");
      out.write("    ");
 
    	}else{
    
      out.write("\r\n");
      out.write("\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("      <li><a href=\"join.jsp\" class=\"btn btn-outline-primary disabled\"><span class=\"fas fa-user\"></span> Sign Up</a></li>\r\n");
      out.write("      <li>&nbsp;&nbsp;&nbsp;</li>\r\n");
      out.write("      <li><a href=\"logoutAction.jsp\" class=\"btn btn-outline-primary\"><span class=\"fas fa-sign-in-alt\"></span> Logout</a></li>\r\n");
      out.write("    </ul>\t    \r\n");
      out.write("    ");
 } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<!-- navbar 끝 -->\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<img alt=\"\" src=\"images/youtube.PNG\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t");

		ArrayList<Info> list = new ArrayList<>();// 배열 생성
		ChromeOptions options = new ChromeOptions();
		options.addArguments("headless");
		options.addArguments("window-size=1920x1080");
		options.addArguments("disable-gpu");
		options.addArguments("user-agent=Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36");
		System.setProperty("webdriver.chrome.driver", "F:/chartboard/gbridgeboard/WebContent/chromedriver_win32/chromedriver.exe");
		WebDriver driver = new ChromeDriver(options);
		driver.get("https://charts.youtube.com/charts/TopSongs/kr");
		Thread.sleep(1000);
		int cnt = 1;
		out.print("<br>");
		out.print("<div class='container'>");
		//WebElement element = driver.findElement(By.xpath("//*[@id='1']/div[3]/div[1]/ytmc-ellipsis-text/div/span"));
		for(int i=1;i<11;i++){
		Info info = new Info();
		WebElement album = driver.findElement(By.xpath("//*[@id='"+i+"']/div[2]/img"));
		WebElement song = driver.findElement(By.xpath("//*[@id='"+i+"']/div[3]/div[1]/ytmc-ellipsis-text/div/span"));
		WebElement singer = driver.findElement(By.xpath("//*[@id='"+i+"']/div[3]/div[2]/ytmc-ellipsis-text/div/span"));
		WebElement youtube_url = driver.findElement(By.xpath("//*[@id='"+i+"']"));
		Thread.sleep(15);
		//out.print("<img alt='' src="+"'"+elebum.getAttribute("src")+"'>");
		//out.print("<h5>"+song.getText()+"</h5>");
		info.rank = cnt;
		cnt+=1;
		info.song = song.getText();
		info.singer = singer.getText();
		info.album = album.getAttribute("src");
		info.youtube_url = youtube_url.getAttribute("track-video-id");
		list.add(info);
		
		}
		//element.click();
		for(Info info : list){
			out.print("<div class='card' id='card'>");
			out.print("<div class='card-body d-inline-flex'>");
			out.print("<h4 class='m-2'>"+info.rank+"</h4>");
			out.print("<img src='"+info.album+"' alt='...' width='60px' height='60px' class='m-2'>");
			
			out.print("<div class='align-self-start'>");
			out.print("<h3 class='font-weight-bold'>"+info.song+"</h3>");
			out.print("<h5>"+info.singer+"</h5>");
			//out.print("<h6>"+info.youtube_url+"</h6>");
			out.print("</div>");
			out.print("<div class='ml-auto p-2 bd-highlight align-self-center'>");
            out.print("<button type='button' class='btn btn-dark fab fa-youtube bg-danger' data-toggle='modal' data-target='#"+info.youtube_url+"'></button></div>");    
			out.print("</div>");
			out.print("</div><br>");
		}
		out.print("</div>");
		for(Info info : list){
			out.print("<div class='modal'tabindex='-1'role='dialog'id='" +info.youtube_url+ "'><div class='modal-dialog modal-lg'role='document'><div class='modal-content'><div class='modal-header'><div class='align-self-start'><h5 class='modal-title'>"+info.song+"</h5><h6 class='modal-title'>"+info.singer+"</h6></div><button type='button'class='close'data-dismiss='modal'aria-label='Close'><span aria-hidden='true'>&times;</span></button></div><div class='modal-body'><div class='container'id='youtube'><iframe width='560'height='315'src='https://www.youtube.com/embed/"+info.youtube_url+"'frameborder='0'allow='accelerometer; autoplay=1; encrypted-media; gyroscope; picture-in-picture'allowfullscreen></iframe></div></div><div class='modal-footer'><button type='button'class='btn btn-danger btn-lg btn-block'data-dismiss='modal'>Close</button></div></div></div></div>");
		}
		
		
		
	
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
