<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	try {
		int userid = -1;
		String project_name = request.getParameter("project_name");
		userid = Integer.parseInt(request.getParameter("founder"));
		String projectintro = request.getParameter("brief");
		String require_num = request.getParameter("require_num");
		String language = request.getParameter("language");

		if (project_name != null && userid != -1) {
			Connection con;
			Statement stmt;
			ResultSet rs;
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			String dbUrl = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
			String dbUser = "Captain";
			String dbPwd = "regex12345";
			//建立数据库连接
			con = java.sql.DriverManager.getConnection(dbUrl, dbUser,
					dbPwd);
			//创建一个SQL声明
			stmt = con.createStatement();
			stmt.executeUpdate("insert into Regex_db.projectbase (projectname,userid,projectintro,requirenum,language) values(\'"
					+ project_name
					+ "\',"
					+ userid
					+ ",\'"
					+ projectintro
					+ "\',\'"
					+ require_num
					+ "\',\'"
					+ language + "\')");
			out.println("项目创建成功！");
		}
		else {
			out.println("项目创建失败！");
		}
	} catch (Exception e) {
		out.println(e.getMessage());
	}
%>
<title>在此处插入标题</title>
</head>
<body>

</body>
</html>