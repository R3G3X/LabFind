<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../../head.jsp"%>
    <link href="../../css/personal.css" rel="stylesheet" />
</head>
<body>
    <%@ include file="../../nav.jsp"%>
    <%@ include file="frame/personinfo.jsp"%>

    <!-- M0DAL-MANAGE -->
    <div class="modal fade" id="modalManage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content"> <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">创建项目</h4>
            </div>
            <div class="join-modal">
                <form id="box-projectadd">
                    <div class="add-right">
                        <div>
                            项目简介：
                        </div>
                        <textarea id="brief" class="input-box"></textarea>
                    </div>
                    <div class="add-left">
                        <div>
                            项目名称：
                        </div>
                        <input type="text" name="project-name" class="input-box">
                    </div>

                    <div class="add-left">
                        <div class="project-adding">
                            当前人数：
                        </div>
                        <div class="person-number">
                            4/10
                        </div>
                    </div>

                    <div class="join-box">
                        <div class="project-adding">
                            申请加入的人:
                        </div>
                        <ul>
                            <li class="join-man">
                                <a href="#">鸡汁汇汇<img src="../../img/avater.png" class="img-circle"></a>
                                <a href="#" type="button" class="btn-pass">通过</a>
                            </li>
                            <li class="join-man">
                                <a href="#">鸡汁汇汇<img src="../../img/avater.png" class="img-circle"></a>
                                <a href="#" type="button" class="btn-pass">通过</a>
                            </li>
                            <li class="join-man">
                                <a href="#">鸡汁汇汇<img src="../../img/avater.png" class="img-circle"></a>
                                <a href="#" type="button" class="btn-pass">通过</a>
                            </li>
                            <li class="join-man">
                                <a href="#">鸡汁汇汇<img src="../../img/avater.png" class="img-circle"></a>
                                <a href="#" type="button" class="btn-pass">通过</a>
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger" id="change-save">delete</button>
                <button type="button" class="btn btn-primary" id="change-save">Save changes</button>
            </div>
        </div>
    </div>
</div>

<div id="content">
	<!-- INSERT YOUR CODE HERE#00-->
    <%@ include file="frame/personhead.jsp"%>
    <div class="container" style="padding-top:20px;">
      <div class="row">
       <div class="col-md-8">
        <div class="message-box">
            <div class="titlebox">
                <h2>
                    <strong>我创建的项目</strong>
                </h2>
            </div>
            <div class="panel-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>项目名称</th>
                            <th>创建人</th>
                            <th>选择编辑</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a>Project1</a></td>
                            <td>Kaito</td>
                            <td><a href="#" type="button" data-toggle="modal" data-target="#modalManage">编辑</a></td>
                            <th><a>退出</a></th>
                        </tr>
                        <tr>
                            <td><a>Project2</a></td>
                            <td>Conan</td>
                            <td><a href="#" type="button" data-toggle="modal" data-target="#modalManage">编辑</a></td>
                            <th></th>
                        </tr>
                        <tr>
                            <td><a>Project3</a></td>
                            <td>Yamada</td>
                            <td><a href="#" type="button" data-toggle="modal" data-target="#modalManage">编辑</a></td>
                            <th></th>
                        </tr>
                    </tbody>
                </table>
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
