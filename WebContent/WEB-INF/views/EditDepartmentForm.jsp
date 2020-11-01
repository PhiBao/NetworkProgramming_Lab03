<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa phòng ban</title>
<link rel="stylesheet" href="/public/css/form.css" type="text/css" />
</head>
<body>
	<section class="container">

		<jsp:include page="_menu.jsp"></jsp:include>
		<jsp:include page="_rightPart.jsp"></jsp:include>
		<jsp:include page="_footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<h1 class="title">Chỉnh Sửa Thông Tin Phòng Ban</h1>
			<form action="${pageContext.request.contextPath}/Handle_UpdateDepartment"
				method="POST">
				<%
					response.setCharacterEncoding("UTF-8");
					request.setCharacterEncoding("UTF-8");
					String id = request.getParameter("id");
				%>
				<%
					Department department = DepartmentDAO.getDepartmentByID(id);
				%>
				<div>
					<div class="inner-wrap">
						<label class="label" for="IDPB">IDPB:</label> <input type="text"
							id="IDPB" name="IDPB" value="<%=department.getIdpb()%>" readonly />
					</div>
					<div class="inner-wrap">
						<label class="label" for="TenPhongBan">Tên phòng ban:</label> <input
							type="text" id="TenPhongBan" name="TenPhongBan" value="<%=department.getTenPhongBan()%>" required />
					</div>
					<div class="inner-wrap">
						<label class="label" for="MoTa">Mô tả:</label> <input
							type="text" id="MoTa" name="MoTa" value="<%=department.getMoTa()%>" required />
					</div>

					<input class="button" TYPE='Submit' value='Sửa'>
				</div>
			</form>
		</section>
	</section>
</body>
</html>