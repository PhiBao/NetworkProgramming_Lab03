<%@page import="model.Staff"%>
<%@page import="dao.StaffDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Xem thông tin nhân viên</title>
<link rel="stylesheet" href="/public/css/table.css" type="text/css"/>
</head>

<body>
	<section class="container">
		<jsp:include page="_menu.jsp"></jsp:include>
		<jsp:include page="_rightPart.jsp"></jsp:include>
		<jsp:include page="_footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<div>
				<i class="title">Xem nhân viên:</i>
			</div>
			<div class="search-tag">
				<form action='${pageContext.request.contextPath}/search/staff' method='get'>
					<span class="form-search"><input TYPE='text' size='20'
						name='IDNV' placeholder="Tìm Kiếm Theo IDNV" /> </span> <INPUT
						class="button" TYPE='Submit' value='Tìm kiếm'>
				</form>
			</div>
			<div>
				<%
					String idnv = request.getParameter("IDNV");
					Staff staff = StaffDAO.getStaffByID(idnv);
					if (staff.getIdnv() != null) {
				%>
				<table class="table">
					<tr class="table-header">
						<th class="header-item">IDNV</th>
						<th class="header-item">IDPB</th>
						<th class="header-item">Họ tên</th>
						<th class="header-item">Địa chỉ</th>
						<th class="header-item"></th>
					</tr>
					<tr class="table-row">
						<td class="table-data"><%=staff.getIdnv()%></td>
						<td class="table-data"><%=staff.getIdpb()%></td>
						<td class="table-data"><%=staff.getHoTen()%></td>
						<td class="table-data"><%=staff.getDiaChi()%></td>
						<td class="table-data"><a href="something"
							class="button update">Sửa</a><a href="something"
							class="button delete">Xoá</a></td>
					</tr>
				</table>
				<%
					} else {
				%>
				<i>Không tìm thấy nhân viên nào có ID = <%=idnv%></i>
				<%
					}
				%>
			</div>
		</section>
	</section>
</body>

</html>