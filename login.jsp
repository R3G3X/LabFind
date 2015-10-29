<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%
String username=request.getParameter("username");
String password=request.getParameter("password");
boolean succeses=false;
success=(username.compareTo("admin")==0)&&(password.compareTo("admin")==0);

if(success){
	response.setStatus(200);//success
}else{
	out.println("登录失败！请检查用户名和密码是否正确");
	response.setStatus(400);//failed
}
%>