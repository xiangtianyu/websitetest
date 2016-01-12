<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/layer/2.0/layer.js"></script>
<link href="http://xiangtianyu.github.io/images/favicon.ico" rel="shortcut icon" />
<title>XTY's Website</title>
<style>
	.inputBox {
		border: 1px #DCDCDC solid;
		text-indent: 20px;
		height: 30px;
		width: 200px;
	}
	
	#formSubmit {
		border: 1px #DCDCDC solid;
		border-radius: 5px;
		margin-top: 10px;
		background-color: #222E2A;
		color: #FFFFFF;
		height: 30px;
		width: 200px;
		cursor: pointer;
	}
</style>

<script>
	window.onload = function () {
		var result = '<%=request.getAttribute("result")%>';
		if (result != null){
			if (result == 'failure'){
				layer.alert('username or password is wrong! please try it again!');
			}
		}
	}
</script>
</head>
<body>
	<h1>Login</h1>
	<form action="LoginServlet" method="POST">
		<input class="inputBox" type="text" name="username" placeholder="username"/><br>
		<input class="inputBox" type="password" name="password" placeholder="password"/><br>
		<input id="formSubmit" type="submit" value="submit">
	</form>
</body>
</html>