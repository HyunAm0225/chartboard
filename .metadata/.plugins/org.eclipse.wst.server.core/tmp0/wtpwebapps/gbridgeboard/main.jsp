<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<title>메인 페이지</title>
<style>
	body{
		background-image: url("images/background-chart.jpg");
	}
	#loginbox{
        background-color: rgba( 255, 255, 255, 0.2 );
	}
	#maleradio{
		background-color: rgba(0,0,255,0.5);
		padding : 12px;
		border-radius: 2px;
	}
	#femaleradio{
		background-color: rgba(255,0,0,0.5);
		padding : 12px;
		border-radius: 2px;
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
	
</body>
</html>