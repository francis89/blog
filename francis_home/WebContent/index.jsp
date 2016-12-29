<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<% 
	String id = (String)session.getAttribute("id");
	String grade = (String)session.getAttribute("grade");
	String str = null;
	if(id==null){
		str="Welcome to my World";
	} else{
		str="안녕하세요 "+id+" 님!!";
	}
	
	
	String title = "MARVEL 블로그";
	if(id!=null && grade.equals("A")){
	   title="관리자 페이지";
	}
%> 

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 24px; 
} 
</style> 
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<body leftmargin="0" topmargin="0">
<jsp:include page="./menu/top.jsp"/>

<DIV class="content">
	<h2><%=title %></h2>
	<img src="<%=root%>/images/shield.png" width="50%">
	<h1><%=str %></h1>
	<br>
	<br>
	
</DIV>
 
<jsp:include page="/menu/bottom.jsp"/>

</body>
 
</html> 