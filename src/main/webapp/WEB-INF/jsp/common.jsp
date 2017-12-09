<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<%
	    String path = request.getContextPath() + "/";
	    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	%>
	<script type="text/javascript">
		var path="<%=path %>";
		var basePath="<%=basePath %>";
	</script>
	<title>Basic TextBox - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>themes/icon.css">
	<script type="text/javascript" src="<%=path %>js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>js/libs/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path %>js/util/util.js"></script>
</head>
</html>