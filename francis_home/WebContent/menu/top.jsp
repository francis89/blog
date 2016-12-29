<%@ page contentType="text/html; charset=UTF-8" %> 
 
<% 
	String root = request.getContextPath(); 

	String id = (String)session.getAttribute("id");
	String grade = (String)session.getAttribute("grade");

%>
 
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">

 .img{
	width: 100%;
	height: 55%;
}
li#admin{
	float:right;
	padding-right: 30px;
}
body{
 	background-color: black; 
}
</style>
</head>
<body>
<!-- 상단 메뉴 -->
<div style="background-color: white;">
<table style="width: 100%">
  <tr>
    <td>
      <img class="img" src="<%=root %>/menu/images/marvel_1.jpg" >
    </td>
  </tr>
</table>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="<%=root %>/index.jsp">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
         <%if(id==null) {%>    
     	<li><a href="<%=root %>/member/agreement.jsp">회원가입</a></li>
     	
     	<%} else if(id!=null && grade.equals("H")){ %>
     	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      		정보확인 <span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
	     <li><a href="<%=root %>/member/read.jsp">나의정보</a></li>
     	<li><a href="<%=root %>/member/updateForm.jsp">회원수정</a></li>
     	<li><a href="<%=root %>/member/deleteForm.jsp">회원탈퇴</a></li>   
     	<li><a href="<%=root %>/member/logout.jsp">로그아웃</a></li>
      </ul>
    </li>
     	 
     	<%	 } %>  
     	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      게시판 <span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
	     <li><a href="<%=root %>/bbs/list.jsp">게시판목록</a></li>
	     <li><a href="<%=root %>/bbs/createForm.jsp">게시판생성</a></li>
      </ul>
    </li>

    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      이미지게시판 <span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
	     <li><a href="<%=root %>/imgbbs/list.jsp">이미지 목록</a></li>
	     <li><a href="<%=root %>/imgbbs/createForm.jsp">이미지 등록</a></li>
      </ul>
    </li>
	
	     <li><a href="<%=root %>/memo/list.jsp">방명록</a></li>
     
    	<%if(id!=null && grade.equals("A")){ %>
    	<li><a href="<%=root %>/member/logout.jsp">로그아웃</a></li>
     <li id="admin"><a href="<%=root %>/admin/list.jsp">회원목록</a></li>
    <%} %>  
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<%=root %>/member/loginForm.jsp">
        <span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>
<!-- 상단 메뉴 끝 -->
 
 
 
<!-- 내용 시작 -->
<div style="width: 100%; padding-top: 10px;">
<div class="container-fluid text-center" style=" background-color: #8B8A8A;">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
     
   