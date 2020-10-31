<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
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
				<i class="title">Xem phòng ban:</i>
			</div>
			<div class="search-tag">
				<form action='${pageContext.request.contextPath}/search/department'
					method='post'>
					<span class="form-search"><input TYPE='text' size='20'
						name='txt-idpb' placeholder="Tìm Kiếm Theo IDPB" /> </span> <INPUT
						class="button" TYPE='Submit' value='Tìm kiếm'>
				</form>
			</div>
			<div>
				<%
					String idpb = request.getParameter("txt-idpb");
				Department department = DepartmentDAO.getDepartmentByID(idpb);
				if (department.getIdpb() != null) {
				%>
				<table class="table">
					<tr class="table-header">
						<th class="header-item">IDPB</th>
						<th class="header-item">Tên phòng ban</th>
						<th class="header-item">Mô tả</th>
						<th class="header-item"></th>
					</tr>
					<tr class="table-row">
						<td class="table-data"><%=department.getIdpb()%></td>
						<td class="table-data"><%=department.getTenPhongBan()%></td>
						<td class="table-data"><%=department.getMoTa()%></td>
						<td class="table-data"><a href="something"
							class="button update">Sửa</a><a href="something"
							class="button delete">Xoá</a></td>
					</tr>
				</table>
				<%
					} else {
				%>
				<i>Không tìm thấy phòng ban nào có ID = <%=idpb%></i>
				<%
					}
				%>
			</div>
		</section>
	</section>
</body>

</html>