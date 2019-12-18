<%@page import="org.openqa.selenium.By"%>
<%@page import="org.openqa.selenium.WebElement"%>
<%@page import="org.openqa.selenium.chrome.ChromeOptions"%>
<%@page import="org.openqa.selenium.chrome.ChromeDriver"%>
<%@page import="org.openqa.selenium.WebDriver"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="org.jsoup.*" %>
<%@page import="chart.Info" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<title>youtube-chart</title>
<style>
	body{
		background-image: url("images/background-chart.jpg");
	}
	#card{
		background-color: rgba( 255, 255, 255, 0.9 );
	}
	#youtube{
		text-align: center;
	}

</style>
</head>
<body>

	<%
		String userID = null;
		if(session.getAttribute("userID")!=null){
			userID = (String) session.getAttribute("userID");
		}
	%>
<!-- navbar 시작 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="main.jsp">차트분석기</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">게시판 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         	<span class="fas fa-music"></span>&nbsp;Chart
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="melon.jsp">Melon</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="genie.jsp">Genie</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="bugs.jsp">Bugs</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="youtube.jsp">YouTube</a>
        </div>
      </li> 
    </ul>
    <%
    	if(userID==null){
    %>  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="join.jsp" class="btn btn-outline-primary"><span class="fas fa-user"></span> Sign Up</a></li>
      <li>&nbsp;&nbsp;&nbsp;</li>
      <li><a href="login.jsp" class="btn btn-outline-primary"><span class="fas fa-sign-in-alt"></span> Login</a></li>
    </ul>  	
    <% 
    	}else{
    %>
	<ul class="nav navbar-nav navbar-right">
      <li><a href="join.jsp" class="btn btn-outline-primary disabled"><span class="fas fa-user"></span> Sign Up</a></li>
      <li>&nbsp;&nbsp;&nbsp;</li>
      <li><a href="logoutAction.jsp" class="btn btn-outline-primary"><span class="fas fa-sign-in-alt"></span> Logout</a></li>
    </ul>	    
    <% } %>

  </div>
</nav>

<!-- navbar 끝 -->
	<div class="container">
		<img alt="" src="images/youtube.PNG">
	</div>
	<%
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
		
		
		
	%>
</body>
</html>