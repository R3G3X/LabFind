<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	try {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Connection con;
		Statement stmt;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		String dbUrl = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
		String dbUser = "Captain";
		String dbPwd = "regex12345";
		//建立数据库连接
		con = java.sql.DriverManager
				.getConnection(dbUrl, dbUser, dbPwd);
		//创建一个SQL声明
		stmt = con.createStatement();
		rs = stmt
				.executeQuery("select username from Regex_db.userbase where username = \'"
						+ username
						+ "\' and password =\'"
						+ password
						+ "\'");
		if (rs.next()) {
			//response.setStatus(200);//success
			out.println("登录！");
		} else {
			out.println("登录失败！请检查用户名和密码是否正确");
			//response.setStatus(400);//failed
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