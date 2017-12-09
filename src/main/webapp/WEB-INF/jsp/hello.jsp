<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/jsp/common.jsp"%>
<head>
	<meta charset="UTF-8">
	<title>Basic TextBox - jQuery EasyUI Demo</title>
	<script type="text/javascript" src="<%=path %>js/hello.js"></script>
</head>
<body>
	<h2>Basic TextBox</h2>
	<p>The textbox allows a user to enter information.</p>
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel" title="Register" style="width:400px;padding:30px 60px">
		<div style="margin-bottom:20px">
			<div>Email:</div>
			<input class="easyui-textbox" data-options="prompt:'Enter a email address...',validType:'email'" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>First Name:</div>
			<input class="easyui-textbox" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>Last Name:</div>
			<input class="easyui-textbox" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>Company:</div>
			<input class="easyui-textbox" style="width:100%;height:32px">
		</div>
		
		<div>
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
		</div>
	</div>
	<div class="page-container" style="width: 100%; height:100px;" id="mi">
		    <table class="nmen" title="用户信息" id="dg" 
		        style=" display:block;width: 100%; height:300px;"
		        data-options="singleSelect:true,fitColumns:false,rownumbers:true,
		        autoRowHeight:false,pagination:true,pageSize:10">
		    </table>
	 </div>
</body>
</html>