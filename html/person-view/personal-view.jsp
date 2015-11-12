<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
    <%@ include file="../../head.jsp"%>
    <link href="../../css/personal.css" rel="stylesheet" />
</head>
<body>
    <%@ include file="../../nav.jsp"%>
    <%@ include file="frame/personinfo.jsp"%>

    <div id="content">
       <!-- INSERT YOUR CODE HERE#00-->
       <%@ include file="frame/personhead.jsp"%>
       <div class="container" style="padding-top:20px;">
          <div class="row">
             <div class="col-md-8">
                <div class="message-box">
                   <div class="titlebox">
                      <h2>
                         <strong>最新动态</strong>
                     </h2>
                 </div>
                 <div class="box-row">

                  <!--#1-->
                  <div class="row">

                    <div class="col-md-3">
                        <img src="<%=avatar_loc%>" class="img-circle big-avatar" />
                    </div>
                    <div class="col-md-9">
                        <h4>我完成了一个项目</h4>
                        <hr />
                        <p style="text-align:right"><strong>2015年10月9日</strong></p>
                    </div>
                </div>
                <hr />
                <!--#2-->
                <div class="row">
                 <div class="col-md-3">
                    <img src="<%=avatar_loc%>" class="img-circle big-avatar" />
                </div>
                <div class="col-md-9">
                    <h4>我加入了一个项目</h4>
                    <hr />
                    <p style="text-align:right"><strong>2015年10月5日</strong></p>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="frame/rightcol.jsp"%>
</div>
</div>
<!-- END OF YOUR CODE#00 -->
</div>

<%@ include file="../../bottom.jsp"%>
</body>
</html>
