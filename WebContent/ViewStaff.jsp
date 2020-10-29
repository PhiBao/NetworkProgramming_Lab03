<%@page import="model.Staff"%>
<%@page import="dao.StaffDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Xem thông tin nhân viên</title>
<link rel="stylesheet" href="css/table.css" type="text/css" media="all" />
</head>

<body>
	<section class="container">
		<jsp:include page="menu.jsp"></jsp:include>
		<jsp:include page="rightPart.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<div class="header-tag">
				<i class="title">Xem Nhân Viên</i> <span class="form-search"><a><i></i></a><input
					placeholder="Tìm Kiếm Theo IDNV" /></span>
					<a href="something" class="button">Tìm kiếm</a>
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
						<td class="table-data"><a href="something" class="button update">Sửa</a><a href="something" class="button delete">Xoá</a></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
		</section>
	</section>
</body>

</html>