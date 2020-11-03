<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" href="/public/css/form.css" type="text/css" />
</head>
<body>
	<section class="container">

		<jsp:include page="_menu.jsp"></jsp:include>
		<jsp:include page="_rightPart.jsp"></jsp:include>
		<jsp:include page="_footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<%
				if (session.getAttribute("username") == null) {
			%>
			<h1 class="title">XIN CHÀO!</h1>
			<form action="${pageContext.request.contextPath}/login" method="POST">
				<div>
					<div class="inner-wrap">
						<label class="label" for="username">Username:</label> <input
							type="text" id="username" name="username" placeholder="usernamme"
							required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="password">Password:</label> <input
							type="password" id="password" name="password"
							placeholder="password" required />
						<%
							if (session.getAttribute("invalid") != null) {
							out.print("<div style='color:red;margin-top:1rem'>Username/Password không chính xác</div>");
						}
						%>
					</div>
					<div>
						<input class="button" TYPE='Submit' value='Đăng nhập'> <a
							id="right" href="${pageContext.request.contextPath}/signup"
							class="button">Đăng ký</a>
					</div>
				</div>
			</form>
		</section>
		<i class="note">*Bạn phải đăng nhập để thực hiện các thao tác cập
			nhật và xoá thông tin*</i>

		<%
			} else {
		%>

		<h1 class="title">
			XIN CHÀO
			<%=session.getAttribute("username")%>!
		</h1>
		<a id="right" href="${pageContext.request.contextPath}/logout"
			class="button">Đăng xuất</a>
		<%
			}
		%>
	</section>
</body>
</html>