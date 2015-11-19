
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	Connection con = null;
	String base = request.getContextPath();
    String avatar_loc="";
    String realname="";
    String username="";
    Cookie cookie = null;
    Cookie[] cookies = null;
    boolean login=false;
    cookies = request.getCookies();
    if(cookies!=null)
        for (int i = 0; i < cookies.length; i++){
            if(cookies[i].getName().compareTo("userid")==0){
                username=cookies[i].getValue();
                    login=true;
                    break;
            }
        }
        if(login){
       		Statement stmt;
        	ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String dbUrl = "jdbc:mysql://121.42.147.131:3306/Regex_DB";
            String dbUser = "root";
            String dbPwd = "0000";
            con = java.sql.DriverManager.getConnection(dbUrl, dbUser, dbPwd);
            stmt = con.createStatement();
            rs = stmt
            .executeQuery("select * from Regex_db.userbase where username = \'"
            + username + "\'");
            while(rs.next()){
                realname=rs.getString("realName");
                avatar_loc=rs.getString("avatar");
            }
            avatar_loc=base+"/img/"+avatar_loc;
            
        }
        String hregister=base+"/register.html";
        String hindex=base+"/index.jsp";
        String hprojectlist=base+"/html/project/projectlist.jsp";
        String hlablist=base+"/html/lab/lablist.jsp";
        String hpersonal=base+"/html/person-view/personal-view.jsp";
    %>
<!-- MODAL-LOGIN -->
<div class="modal fade" id="modalRegister" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel" style="text-align: center">登陆</h4>
			</div>
			<div id="login-front">
				<div id="name-input">
					<form>
						<input type="text" id="username" placeholder=" username">
						<input type="password" id="password" placeholder=" password">
					</form>
				</div>
				<div style="margin-top: 35px;">
					<a id="register-btn" href="<%=hregister%>">注册</a>
					<button id="user-login" type="button" class="btn btn-primary">登陆</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ADD-PROJECT -->
<div id="project-add">
	<a href="#" type="button" data-toggle="modal" data-target="#modalAdd">
		<span id="btn-add" class="glyphicon glyphicon-plus"
		style="font-size: 40px; color: #fff"></span>
	</a>
</div>
<!-- MODAL-ADD -->
<div class="modal fade" id="modalAdd" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">创建新项目</h4>
			</div>
			<div class="modal-body">
				<form id="box-projectadd">
					<div class="add-right">
						<div>项目简介：</div>
						<textarea id="brief"></textarea>
					</div>
					<div class="add-left">
						<div>项目名称：</div>
						<input type="text" id="project-name" />
					</div>
					<div class="add-left">
						<div class="project-adding">创建人：</div>
						<input type="text" id="founder-name" />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="change-save">Save
					changes</button>
			</div>
		</div>
	</div>
</div>
<div class="navbar navbar-fixed-top navigation" role="navigation">
	<div class="container">

		<!-- LOGO -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=hindex%>">REG|EX</a>
		</div>

		<!-- LEFT-NAV -->
		<ul class="nav navbar-nav navbar">
			<li><a class="top" href="<%=hprojectlist%>">所有项目</a></li>
			<li><a class="top" href="<%=hlablist%>">实验室</a></li>
		</ul>

		<!-- RIGHT-NAV -->
		<div>
			<ul class="nav navbar-nav navbar-right">

				<!-- SEARCH -->
				<li>
					<form class="navbar-form navbar-left" role="search">
						<div id="search-box">
							<input id="search-input" type="text" name="query" required="true"
								placeholder="Search" />
						</div>
					</form>
				</li>

				<!-- USER-INT -->
				<li class="dropdown hidden"><a href="#"
					class="dropdown-toggle top" data-toggle="dropdown"><%=realname%><strong
						class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="<%=hpersonal%>">我的主页</a></li>
						<li class="divider"></li>
						<li><a href="#" id="exit">退出登录</a></li>
					</ul></li>

				<li id="login"><a href="#" type="button" data-toggle="modal"
					data-target="#modalRegister">登陆</a></li>

				<!-- AVATAR -->
				<li style="margin-left: 5px" id="user-pic" class="hidden"><img
					src="<%=avatar_loc%>" class="img-circle"></li>
			</ul>
		</div>
	</div>
</div>