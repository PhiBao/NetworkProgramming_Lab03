<%@page import="model.Staff"%>
<%@page import="dao.StaffDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Cập nhật thông tin nhân viên</title>
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
				<i class="title">Cập nhật nhân viên:</i>
			</div>
			<div>
				<table class="table">
					<tr class="table-header">
						<th class="header-item">STT</th>
						<th class="header-item">IDNV</th>
						<th class="header-item">IDPB</th>
						<th class="header-item">Họ tên</th>
						<th class="header-item">Địa chỉ</th>
						<th class="header-item"></th>
					</tr>
					<%
						int count = 0;
					for (Staff staff : StaffDAO.getAllStaff()) {
						count++;
					%>
					<tr class="table-row">
						<td class="table-data"><%=count%></td>
						<td class="table-data"><%=staff.getIdnv()%></td>
						<td class="table-data"><%=staff.getIdpb()%></td>
						<td class="table-data"><%=staff.getHoTen()%></td>
						<td class="table-data"><%=staff.getDiaChi()%></td>
						<td class="table-data"><a
							href="${pageContext.request.contextPath}/edit/staff?id=<%=staff.getIdnv()%>"
							class="button update">Sửa</a><a
							href="${pageContext.request.contextPath}/delete/staff?id=<%=staff.getIdnv()%>"
							class="button delete">Xoá</a></td>
					</tr>
					<%
						}
					%>
				</table>
				<div class="tag-insert">
					<a href="${pageContext.request.contextPath}/create/staff"
						class="button insert">Chèn</a>
				</div>
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
