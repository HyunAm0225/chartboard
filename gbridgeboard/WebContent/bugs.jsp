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
<title>bugs-chart</title>
<style>
	body{
		background-image: url("images/background-chart.jpg");
	}
	#card{
		background-color: rgba( 255, 255, 255, 0.9 );
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
        <a class="nav-link" href="bbs.jsp">게시판 <span class="sr-only">(current)</span></a>
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
		<img alt="" src="images/bugs.PNG">
	</div>

	<%
		String url="https://music.bugs.co.kr/chart";
		Document doc = Jsoup.connect(url)
				.userAgent("Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36")
	            .header("scheme", "https")
	            .header("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8")
	            .header("accept-encoding", "gzip, deflate, br")
	            .header("accept-language", "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7,es;q=0.6")
	            .header("cache-control", "no-cache")
	            .header("pragma", "no-cache")
	            .header("upgrade-insecure-requests", "1")
	            .get();

		Elements album_imgs = doc.getElementsByClass("thumbnail");
		Elements song = doc.getElementsByClass("title");
		Elements singer = doc.getElementsByClass("artist");
		ArrayList<Info> list = new ArrayList<>();// 배열 생성
		int cnt = 1;
		out.print("<br>");
		out.print("<div class='container'>");
		
		for(int i=0; i<100;++i){
			Info info = new Info();
			info.rank=cnt;
			cnt+=1;
			info.song = song.get(i+3).getElementsByTag("a").text();
			info.singer = singer.get(i+1).text();
			info.album = album_imgs.get(i).select("img").attr("src").toString();
			
			
			
			
			list.add(info);
		
		}
		
		for(Info info : list){
			out.print("<div class='card' id='card'>");
			out.print("<div class='card-body d-inline-flex'>");
			out.print("<h4 class='m-2'>"+info.rank+"</h4>");
			out.print("<img src='"+info.album+"' alt='...' width='60px' height='60px' class='m-2'>");
			out.print("<div class='align-self-start'>");
			out.print("<h3 class='font-weight-bold'>"+info.song+"</h3>");
			out.print("<h5>"+info.singer+"</h5>");
			out.print("</div>");
			//out.print("<h5> 테스트(이미지경로) : "+info.album+"</h5>");
			out.print("</div></div>");
			out.print("<br>");
		}
		out.print("</div>");
		//Elements titles=doc.select("div.ellipsis.rank01");
		//int i = 1;
		//for(Element e:titles){
		//	String song=e.text();
		//	
		//	out.print("<h5 class='text-light bg-dark'>"+i+"위 제목 :" +song+"</h1><br>");
		//	i++;
		//}
	%>
</body>
</html>