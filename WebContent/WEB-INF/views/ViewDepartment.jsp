<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Xem thông tin phòng ban</title>
<link rel="stylesheet" href="/public/css/table.css" type="text/css" />
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
							href="${pageContext.request.contextPath}/update/department?id=<%=department.getIdpb()%>"
							class="button update">Sửa</a><a
							href="${pageContext.request.contextPath}/Handle_DeleteDepartment"
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
	</section>
</body>

</html>