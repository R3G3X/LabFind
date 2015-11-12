<!DOCTYPE html>
<html lang="en">
<head>
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
                        <strong>编辑个人信息</strong>
                    </h2>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="phone" class="col-sm-2 control-label">手机号</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="phone" placeholder="Phone Number">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">邮箱</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickname" class="col-sm-2 control-label">昵称</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="nickname" placeholder="nickname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="introduce" class="col-sm-2 control-label">一句话简介</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="introduce" placeholder="introduction">
                            </div>
                        </div>
                        <div style="text-align:right">
                            <button type="submit" class="btn btn-default">提交</button>
                            <button type="button" class="btn btn-default">取消</button>
                        </div>
                    </form>
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
