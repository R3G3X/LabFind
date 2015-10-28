<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
try{
	String username="";
	String password="";
	String phone="";
	username=request.getParameter("userName");
	password=request.getParameter("password");
	phone=request.getParameter("contactPhone");
  Connection con;
  Statement stmt;
  ResultSet rs;
  //加载驱动程序，下面的代码加载MySQL驱动程序
  Class.forName("com.mysql.jdbc.Driver");
  //注册MySQL驱动程序
  DriverManager.registerDriver(new com.mysql.jdbc.Driver());
  //用适当的驱动程序连接到数据库
  String dbUrl =  "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
  String dbUser="Captain";
  String dbPwd="regex12345";
  //建立数据库连接
  con = java.sql.DriverManager.getConnection(dbUrl,dbUser,dbPwd);
  //创建一个SQL声明
  stmt = con.createStatement();
  rs = stmt.executeQuery("select count(*) record_ from(select username from Regex_db.userbase where username = \'"+username+"\')as a");
  int rs_count=0;
  if(rs.next())    
  {    
	  rs_count=rs.getInt("record_");    
  };
  if(rs_count==0){
	  stmt.executeUpdate("insert into Regex_db.userbase (username,password,phone_num) values(\'"+username+"\',\'"+password+"\',\'"+phone+"\')");
  }
  else{
	  out.println("already here!");
  }
  //增加新记录
  //stmt.executeUpdate("insert into Regex_db.user (username,userid) values(username,userid)");
  //查询记录
  rs = stmt.executeQuery("select id,username,password from Regex_db.userbase");
  //输出查询结果
  out.println("<table border=1 width=400>");
 while (rs.next()){
    String col1 = rs.getString(1);
    String col2 = rs.getString(2);
    String col3 = rs.getString(3);
    //打印所显示的数据    
    out.println("<tr><td>"+col1+"</td><td>"+col2+"</td><td>"+col3+"</td><td>");
  }
  out.println("</table>");
  //删除新增加的记录
 // stmt.executeUpdate("delete from BOOKS where ID='999'");
  //关闭数据库连接
  rs.close();
  stmt.close();
  con.close();
}catch(Exception e){out.println(e.getMessage());}
%>
<title>在此处插入标题</title>
</head>
<body>

</body>
</html>