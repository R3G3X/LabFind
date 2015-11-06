﻿<!DOCTYPE html>
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
    <link href="../../css/project.css" rel="stylesheet" />
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
            <div class="row clearfix">

                <div style="background:url(../../img/background-img.jpg) no-repeat fixed center center / cover;border-bottom: 5px solid #3C6186;margin-top:-30px;padding-bottom:0px;box-shadow:#000 1px 1px 5px">

                    <div class="jumbotrona masthead" style="padding-top:20px;padding-bottom:10px;box-shadow:#000 3px 3px 5px inset;">
                        <div class="container" style="text-align:center">
                            <h2 id="project-name">项目名称</h2>
                            <h3 id="project-comment">项目概述hahahahahaahhahah项目概述</h3>
                            <a class="btn btn-lg btn-primary" href="project-edit.html" role="button" id="join">我要加入</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row" style="padding-top:40px">
                    <div class="col-md-8 colunm">
                        <div class="message-box">
                            <div class="titlebox">
                                <h3>人员需求</h3>
                            </div>
                            <div class="message-word">
                                <p>这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字</p>
                            </div>
                        </div>

                        <div class="message-box" style="margin-top:30px;">
                            <div class="titlebox">
                                <h3>联系方式</h3>
                            </div>
                            <div class="message-word">
                                <div style="margin-left:30px;margin-top:10px;font-size:16px">
                                    <div style="float:right;margin-right:40px">
                                        <img src="../../img/avater.png" class="img-circle" style="margin-top:15px;border:2px solid #000000">
                                        <br />
                                        <a href="#" style="font-size:16px;margin:auto">机制汇</a>
                                        <br />
                                        <a href="#" role="button" class="btn-primary btn-sm" style="margin:auto;">与他联系</a>
                                    </div>
                                    <p>联系人：机制汇</p>
                                    <p>邮箱：</p>
                                    <p>QQ：</p>
                                    <p>电话：</p>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="col-md-4 colunm">
                        <div style="padding-bottom:20px;">
                            <img style="width:358px;border-radius:10px;" src="../../img/background-img1.jpg" />
                        </div>
                        <div class="message-box">
                            <div class="titlebox">
                                <h3>参与人员</h3>
                            </div>
                                <div id="myCarousel" class="carousel slide" style="text-align:center;margin:20px;">
                                    <!-- 轮播（Carousel）项目 -->
                                    <div class="carousel-inner">
                                        <div class="item active" style="margin-top:10px">
                                            <ul>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle carosusel-avatar">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">机制汇</a>
                                                </li>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle carosusel-avatar">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">机制汇</a>
                                                </li>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle carosusel-avatar">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">机制汇</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item" style="margin-top:10px;">
                                            <ul>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle" style="border:2px solid #000000">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">机智汇</a>
                                                </li>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle" style="border:2px solid #000000">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">机智汇</a>
                                                </li>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle" style="border:2px solid #000000">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">机智汇</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item" style="margin-top:10px;">
                                            <ul>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle" style="border:2px solid #000000">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">鸡汁汇</a>
                                                </li>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle" style="border:2px solid #000000">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">鸡汁汇</a>
                                                </li>
                                                <li class="man">
                                                    <img src="../../img/avater.png" class="img-circle" style="border:2px solid #000000">
                                                    <br />
                                                    <a href="#" style="font-size:16px;">鸡汁汇</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- 轮播（Carousel）导航 -->

                                    <a class="c-control" href="#myCarousel" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </a>
                                    <a class="c-control right " href="#myCarousel" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </a>

                                </div>
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