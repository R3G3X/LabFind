<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	try {
		String username = "MsJiang";
		String password = "12345678";
		
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		Connection con;
		Statement stmt;
		ResultSet rs;
		//加载驱动程序，下面的代码加载MySQL驱动程序
		Class.forName("com.mysql.jdbc.Driver");
		//注册MySQL驱动程序
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		//用适当的驱动程序连接到数据库
		String dbUrl = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
		String dbUser = "Captain";
		String dbPwd = "regex12345";
		//建立数据库连接
		con = java.sql.DriverManager
				.getConnection(dbUrl, dbUser, dbPwd);
		//创建一个SQL声明
		stmt = con.createStatement();
		rs = stmt
				.executeQuery("select count(*) record_ from(select username from Regex_db.userbase where username = \'"
						+ username + "\')as a");
		int rs_count = 0;
		if(rs.next())    
		  {    
			  rs_count=rs.getInt("record_");    
		  };
		if(rs_count!=1){
			out.println("1");//用户不存在
		}
		else{
			rs = stmt
					.executeQuery("select username,password from Regex_db.userbase where username = \'"
							+ username + "\'");
			String tmp="";
			while(rs.next()){
			tmp=rs.getString(2);}
			if(password.equals(tmp)){
				out.println("0");//登陆成功
			}
			else{
				out.println("2");//密码错误
			}
		}
		//关闭数据库连接
		rs.close();
		stmt.close();
		con.close();
	} catch (Exception e) {
		out.println(e.getMessage());
	}
%>

<title>在此处插入标题</title>
</head>
<body>

</body>
</html>