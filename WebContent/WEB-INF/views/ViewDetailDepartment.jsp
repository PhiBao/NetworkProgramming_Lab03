<%@page import="model.Staff"%>
<%@page import="dao.StaffDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Xem thông tin nhân viên</title>
<link rel="stylesheet" href="/public/css/table.css" type="text/css" />
</head>

<%
	String idpb = request.getParameter("ID");
%>
<body>
	<section class="container">
		<jsp:include page="_menu.jsp"></jsp:include>
		<jsp:include page="_rightPart.jsp"></jsp:include>
		<jsp:include page="_footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<div>
				<i class="title">Chi tiết phòng ban <%=idpb%>:
				</i>
			</div>
			<div>
				<table class="table">
					<tr class="table-header">
						<th class="header-item">STT</th>
						<th class="header-item">IDNV</th>
						<th class="header-item">IDPB</th>
						<th class="header-item">Họ tên</th>
						<th class="header-item">Địa chỉ</th>
					</tr>
					<%
						int count = 0;
					for (Staff staff : StaffDAO.getStaffByIDPB(idpb)) {
						count++;
					%>
					<tr class="table-row">
						<td class="table-data"><%=count%></td>
						<td class="table-data"><%=staff.getIdnv()%></td>
						<td class="table-data"><%=staff.getIdpb()%></td>
						<td class="table-data"><%=staff.getHoTen()%></td>
						<td class="table-data"><%=staff.getDiaChi()%></td>
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