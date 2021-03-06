<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Cập nhật thông tin phòng ban</title>
<link rel="stylesheet" href="/public/css/table.css" type="text/css" />
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
			<div>
				<i class="title">Cập nhật phòng ban:</i>
			</div>
			<div>
				<table class="table">
					<tr class="table-header">
						<th class="header-item">STT</th>
						<th class="header-item">IDPB</th>
						<th class="header-item">Tên phòng ban</th>
						<th class="header-item">Mô tả</th>
						<th class="header-item"></th>
					</tr>
					<%
						int count = 0;
					for (Department department : DepartmentDAO.getAllDepartment()) {
						count++;
					%>
					<tr class="table-row">
						<td class="table-data"><%=count%></td>
						<td class="table-data"><%=department.getIdpb()%></td>
						<td class="table-data"><%=department.getTenPhongBan()%></td>
						<td class="table-data"><%=department.getMoTa()%></td>
						<td class="table-data"><a
							href="${pageContext.request.contextPath}/edit/department?id=<%=department.getIdpb()%>"
							class="button update">Sửa</a><a
							onclick="return confirm('Are you sure you want to delete')"
							href="${pageContext.request.contextPath}/delete/department?id=<%=department.getIdpb()%>"
							class="button delete">Xoá</a></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div class="tag-insert">
				<a href="${pageContext.request.contextPath}/create/department"
					class="button insert">Chèn</a>
			</div>
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
