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
                         <strong>我加入的项目</strong>
                     </h2>
                 </div>
                 <div class="panel-body">
                  <table class="table">
                     <thead>
                        <tr>
                           <th>项目名称</th>
                           <th>创建人</th>
                           <th>当前状态</th>
                           <th>操作</th>
                       </tr>
                   </thead>
                   <tbody>
                    <tr>
                       <td><a>Project1</a></td>
                       <td>Kaito</td>
                       <td><span class="label label-warning">pending</span></td>
                       <th><a>退出</a></th>
                   </tr>
                   <tr>
                       <td><a>Project2</a></td>
                       <td>Conan</td>
                       <td><span class="label label-success">in progess</span></td>
                       <th></th>
                   </tr>
                   <tr>
                       <td><a>Project3</a></td>
                       <td>Yamada</td>
                       <td><span class="label label-success">in progess</span></td>
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
