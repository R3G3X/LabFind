<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
String user=request.getParameter("username");
String pass=request.getParameter("password");
%>

<%
if(user.equals("1") && pass.equals("1")){
    response.setStatus(200);
}
else if(user.equals("1")){
    response.setStatus(400);
}
else{
    response.setStatus(401);
}
%>
