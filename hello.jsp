<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
String founder_name=request.getParameter("founder-name");
String project_name=request.getParameter("project-name");
String brief=request.getParameter("brief");
%>

<%=founder_name=="1"?1:0%>