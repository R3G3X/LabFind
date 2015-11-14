
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
        if(!login||username.compareTo("")==0){
            response.sendRedirect("../../login403.html"); 
            return;     
      }
        Statement stmt;
        ResultSet rs;
        
        stmt = con.createStatement();
        rs = stmt
                .executeQuery("select * from Regex_db.userbase where username = \'"
                        + username + "\'");
        //personal information
        String userid="";
        String userIntro="";
        String technique="";
        String phone="";
        while(rs.next()){
            userid=rs.getString("id");
            userIntro=rs.getString("userintro");
            technique=rs.getString("technique");
            phone=rs.getString("phone");
        }
        %>