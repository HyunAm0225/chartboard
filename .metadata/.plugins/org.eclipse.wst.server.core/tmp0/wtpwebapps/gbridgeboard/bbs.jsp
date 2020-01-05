<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
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
<title>게시판 페이지</title>
<style>
	body{
		background-image: url("images/background-chart.jpg");
	}
	a, a:hover{
		color:#ffffff;
		text-decoration:none;
	}
</style>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID")!=null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber=1;
		if(request.getParameter("pageNumber")!=null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
		<div class="row">
			<table class="table table-dark" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="text-align:center">번호</th>
						<th style="text-align:center">제목</th>
						<th style="text-align:center">작성자</th>
						<th style="text-align:center">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						for(int i=0;i<list.size();i++){	
					%>
					<tr>
						<td><%=list.get(i).getBbsID() %></td>
						<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%=list.get(i).getBbsTitle() %></a></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getBbsDate().substring(0,10) + " "+ list.get(i).getBbsDate().substring(11,13)+"시 "+list.get(i).getBbsDate().substring(14,16) +"분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>	
			</table>
			<%
				if(pageNumber !=1){
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber-1%>" class="btn btn-success btn-arrow-left">이전</a>
			
			<%
				}if(bbsDAO.nextPage(pageNumber+1)){
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber+1 %>" class="btn btn-success btn-arrow-left">다음</a>
			<%
				}
			%>
			<a href="write.jsp" class="btn btn-primary float-right">글쓰기</a>
		</div>
	</div>
	
</body>
</html>