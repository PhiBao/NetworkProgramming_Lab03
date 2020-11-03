<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
<link rel="stylesheet" href="/public/css/form.css" type="text/css" />
</head>
<body>
	<section class="container">

		<jsp:include page="_menu.jsp"></jsp:include>
		<jsp:include page="_rightPart.jsp"></jsp:include>
		<jsp:include page="_footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<h1 class="title">XIN CHÀO!</h1>
			<form action="${pageContext.request.contextPath}/Handle_SignUp"
				method="POST">
				<div>
					<div class="inner-wrap">
						<label class="label" for="username">Username:</label> <input
							type="text" id="username" name="username" placeholder="usernamme"
							required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="password">Password</label> <input
							type="password" id="password" name="password"
							placeholder="password" required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="passwordConfirm">Confirm
							password:</label> <input type="password" id="passwordConfirm"
							name="passwordConfirm" placeholder="Confirm password" required />
						<%
							if (session.getAttribute("error") != null) {
							out.print("<div style='color:red;margin-top:1rem'>Nhập lại password không đúng");
						}
						%>
					</div>
					<div>
						<input class="button" TYPE='Submit' value='Đăng ký'>
					</div>
				</div>
			</form>
		</section>
	</section>
</body>
</html>