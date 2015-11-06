<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- meta -->
    <title>LAB FIND</title>
    <!-- DO NOT EDIT THIS LINE AND ANY LINES BETWEEN THEM -->
	<!-- BOOTSTRAP#01 -->
	<%@page import="java.sql.*"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
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
			Connection con;
			Statement stmt;
			ResultSet rs;
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			String dbUrl = "jdbc:mysql://localhost:3306/Regex_DB";
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
			avatar_loc="../../img/"+avatar_loc;
		}
	%>
	<link href="../../css/bootstrap.min.css" rel="stylesheet" />
	<link href="../../css/default.css" rel="stylesheet" />
	<script src="../../js/jquery/2.0.0/jquery.min.js"></script>
	<script src="../../js/3.0.3/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../js/jquery/jquery-latest.js"></script>
	<script type="text/javascript" src="../../js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../../js/default.js"></script>
	<!-- END OF BOOTSTRAP#01 -->
    <link href="../../css/lab.css" rel="stylesheet" />
</head>
<body>

    <!-- DO NOT EDIT THIS LINE AND ANY LINES BETWEEN THEM -->
    <!-- NAVAIGATION#02 -->

    <!-- MODAL-LOGIN -->
    <div class="modal fade" id="modalRegister" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel" style="text-align:center">登陆</h4>
                </div>
                <div id="login-front">
                    <div id="name-input">
                        <form>
                                <input type="text" id="username" placeholder=" username">
                                <input type="password" id="password" placeholder=" password">
                        </form>
                    </div>
                    <div style="margin-top:35px;">
                        <a id="register-btn" href="register.html">注册</a>
                        <button id="user-login" type="button" class="btn btn-primary">登陆</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ADD-PROJECT -->
    <div id="project-add">
        <a href="#" type="button" data-toggle="modal" data-target="#modalAdd">
            <span id="btn-add" class="glyphicon glyphicon-plus" style="font-size:40px; color:#fff"></span>
        </a>
    </div>
    <!-- MODAL-ADD -->
    <div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">创建项目</h4>
                </div>
                <div class="modal-body">
                    <form id="box-projectadd">
                        <div class="add-right">
                            <div>
                                项目简介：
                            </div>
                            <textarea id="brief"></textarea>
                        </div>
                        <div class="add-left">
                            <div>
                                项目名称：
                            </div>
                            <input type="text" id="project-name" />
                        </div>
                        <div class="add-left">
                            <div class="project-adding">
                                创建人：
                            </div>
                            <input type="text" id="founder-name" />
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="change-save">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-fixed-top navigation" role="navigation">
        <div class="container">

            <!-- LOGO -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../../index.jsp">REG|EX</a>
            </div>

            <!-- LEFT-NAV -->
            <ul class="nav navbar-nav navbar">
                <li><a class="top" href="../project/projectlist.jsp">所有项目</a></li>
                <li><a class="top" href="../lab/lablist.jsp">实验室</a></li>
            </ul>

            <!-- RIGHT-NAV -->
            <div>
                <ul class="nav navbar-nav navbar-right">

                    <!-- SEARCH -->
                    <li>
                        <form class="navbar-form navbar-left" role="search">
                            <div id="search-box">
                                <input id="search-input"type="text" name="query" required="true" placeholder="Search"/>
                            </div>
                        </form>
                    </li>

                    <!-- USER-INT -->
                    <li class="dropdown hidden">
                        <a href="#" class="dropdown-toggle top" data-toggle="dropdown"><%=realname%><strong class="caret"></strong></a>
                        <ul class="dropdown-menu">
                            <li><a href="../person-view/personal-view.jsp">我的主页</a></li>
                            <li class="divider"></li>
                            <li><a href="#" id="exit">退出登录</a></li>
                        </ul>
                    </li>

                    <li id="login">
                        <a href="#" type="button" data-toggle="modal" data-target="#modalRegister">登陆</a>
                    </li>

                    <!-- AVATAR -->
                    <li style="margin-left:5px" id="user-pic" class="hidden"><img src="<%=avatar_loc%>" class="img-circle"></li>
                </ul>
            </div>


        </div>
    </div>
    <!-- END OF NAVAIGATION#02 -->

    <div id="content">
        <!-- INSERT YOUR CODE HERE#00-->
        <div style="padding-bottom:50px;">
            <!-- 请在这里插入html页面内容 -->
            <!--项目列表-->
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <ul>
                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="lab-tag">
                                <div class="tag-box">
                                    <div class="project-box">
                                        <a href="labview.jsp" class="lab-drb">
                                            <img class="tag-image" src="../../img/background-img.jpg">
                                            <h3 style="margin-left:10px">这是一个实验室</h3>
                                            <div class="lab-text">描述：这是一个实验室blabalbalbalbalbalalbablabalbalballabalalbalal</div>
                                        </a>
                                        <div style="padding-top:10px">
                                            <img src="../../img/labproject.bmp" style="width:30px;height:30px;margin-left:20px" title="项目数">10
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    <!-- END OF YOUR CODE#00 -->
    </div>


    <!-- DO NOT EDIT THIS LINE AND ANY LINES BETWEEN THEM -->
<!-- BOTTOM#03 -->
<div class="col-md-12 column text-center">
	<p><br>REGEX Team. (153-006-81187)<br />中山北路 3663 号 华东师范大学<br /></p>
</div>
<div class="contact">
	<div class="container">
		<ul>
			<li class="contact-left">
				REGEX技术交流群：
				<span>484366879</span>
			</li>
			<li>
				Bootstrap问答社区
			</li>
			<li class="contact-right">
				新浪微博：@REGEX
			</li>
		</ul>
	</div>
</div>
<!-- END OF BOTTOM#03 -->
</body>
</html>
