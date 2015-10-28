<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
String founder_name=request.getParameter("founder-name");
String project_name=request.getParameter("project-name");
String brief=request.getParameter("brief");
%>

<%=

(founder_name=="1234"||project_name=="1234"||brief=="1234")?"<p>你输入了1234<p>":"<p>你没有输入1234<p>"


%>