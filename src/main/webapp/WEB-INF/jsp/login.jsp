<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="UTF-8" />

    <!-- Bootstrap -->
    <link href="<%=path %>css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>css/font-awesome.css" rel="stylesheet">
    <link href="<%=path %>css/vendor/bootstrap-checkbox.css" rel="stylesheet">
    <link href="<%=path %>css/minimal.css" rel="stylesheet">
  </head>
  <body class="bg-1">
    <div id="wrap">
      <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">
        <div class="d-log">
        	<div class="d-logo"><img src="../images/backgrounds/ilogo.png"></div>	
        	<div class="d-center">
        		<div class="d-buttom">
        			 <form id="form-signin" class="form-signin" method="post">
			<span style="color: red">${errmsg}</span>
              <section>
                <div class="input-group" style="margin-bottom:10px; color:#fff;">
                  <input type="text" class="form-control" name="username" placeholder="用户名" style="background: #0a79d0; border:0px;  color:#fff;">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group" style="margin-bottom:10px;">
                  <input type="password" class="form-control" name="password" placeholder="密码" style="background: #0a79d0; border:0px; color:#fff;">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
              </section>
              <section class="log-in" >
                <button class="btn btn-greensea" style="width:330px;height:40px;background:#60ba0c;">登录</button>
              </section>
            </form>
        	</div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
      
