<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Xoá thông tin phòng ban</title>
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
				<i class="title">Xoá phòng ban:</i>
			</div>
			<div>
				<form method="post"
					action="${pageContext.request.contextPath}/Handle_MultiDeleteDepartment">
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
							<td class="table-data"><label class="label"><input
									type="checkbox" name="deleteDepartment"
									value=<%=department.getIdpb()%>> <span
									class="checkmark"></span> </label></td>
						</tr>
						<%
							}
						%>
					</table>
					<div class="tag-insert">
						<input onclick="return confirm('Are you sure you want to delete')"
							type="submit" class="button insert" value="Xoá">
					</div>
				</form>
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
