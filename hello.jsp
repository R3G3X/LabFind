<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%
String s=request.getParameter("founder-name");
if(s.compareTo("1")==0){
	response.setStatus(200);
}else{
	response.setStatus(500);
}
%>