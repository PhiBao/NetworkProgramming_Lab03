<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chèn nhân viên</title>
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
				if (session.getAttribute("username") != null) {
			%>
			<h1 class="title">Điền Thông Tin Nhân Viên</h1>
			<form action="${pageContext.request.contextPath}/Handle_CreateStaff"
				method="POST">
				<%
					response.setCharacterEncoding("UTF-8");
				request.setCharacterEncoding("UTF-8");
				%>
				<div>
					<div class="inner-wrap">
						<label class="label" for="IDNV">IDNV:</label> <input type="text"
							id="IDNV" name="IDNV" required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="IDPB">IDPB:</label> <input type="text"
							id="IDPB" name="IDPB" required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="HoTen">Họ tên:</label> <input
							type="text" id="HoTen" name="HoTen" required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="DiaChi">Địa chỉ:</label> <input
							type="text" id="DiaChi" name="DiaChi" required />
					</div>

					<input class="button" TYPE='Submit' value='Chèn'>
				</div>
			</form>
		</section>
		<%
			} else {
		%>

		<h1 class="title">BẠN CẦN PHẢI ĐĂNG NHẬP ĐỂ THỰC HIỆN CHỨC NĂNG
			NÀY</h1>
		<%
			}
		%>
	</section>
</body>
</html>