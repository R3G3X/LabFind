<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%
String founder_name=request.getParameter("founder-name");
String project_name=request.getParameter("project-name");
String brief=request.getParameter("brief");
if(founder_name=="1"){
	response.setStatus(200);
}else{
	response.setStatus(400);
}
%>