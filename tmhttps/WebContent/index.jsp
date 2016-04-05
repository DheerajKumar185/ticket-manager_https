<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
	function formValidation() {
		var userName = document.getElementById('userName').value;
		var password = document.getElementById('password').value;
		var url = 'https://10.125.125.34:8443/ticket-manager/oauth/token?grant_type=password&client_id=restapp&client_secret=restapp&username='
				+ userName + '&password=' + password;
		if (userName == null || userName == '') {
			alert('Enter Username')
			return false;
		} else if (password == null || password == '') {
			alert('Enter password')
			return false;
		}
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				if (xmlhttp.status == 200) {
					window.location = "home.jsp";

				} else {
					if (xmlhttp.status == 400)
						obj = JSON.parse(xmlhttp.responseText);
						alert(obj.error_description);
				}
			}
		};
		xmlhttp.open("GET", url, true);
		xmlhttp.send(null);
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<div align="center">
			<div class="wrapdiv" style="height: 100%; width: 100%;">
				<table class="logintable"
					style="position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; margin: auto; width: 20%;">
					<caption>Login</caption>
					<tr>
						<td>Username</td>
						<td><input type="text" id="userName" name="userName"
							placeholder="Username" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" id="password" name="password"
							placeholder="Password" /></td>
					</tr>
					<tr>
						<td><button type="button" onclick="return formValidation();">Login</button></td>
					</tr>
				</table>
			</div>
		</div>
</body>
</html>