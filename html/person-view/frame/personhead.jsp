    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="background:url(../../img/background-img.jpg) no-repeat fixed center center / cover;border-bottom: 5px solid #3C6186;margin-top:-30px;padding-bottom:0px;box-shadow:#000 1px 1px 5px">

  <div class="jumbotrona masthead" style="padding-top:20px;padding-bottom:10px;box-shadow:#000 3px 3px 5px inset;">
   <div class="container" style="text-align:center"  id="user-box">
    <img src="<%=avatar_loc%>" class="img-circle big-avatar" />
    <h2 id="user"><%=realname%></h2>
    <h3 id="comment"><%=userIntro%></h3>
    <a class="btn btn-lg btn-success" href="manage.jsp" role="button">管理项目</a>
  </div>
  </div>
</div>
<%if(phone.compareTo("")==0){%>
<div class="alert alert-danger" role="alert" style="margin-bottom: 0px;">
<strong>亲爱的用户</strong> 你还没有完善你的个人信息，请点击<a href="edit.html">这里</a>完善个人信息
</div>
<%}%>