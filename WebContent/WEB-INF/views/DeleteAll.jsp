<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Xoá tất cả</title>
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
				<i class="title">Bạn cần xoá tất cả bảng nào?</i>
			</div>
			<div class="tag">
				<a href='${pageContext.request.contextPath}/deleteAll/staff'><span>Nhân
						viên</span></a>
			</div>
			<div class="tag">
				<a href='${pageContext.request.contextPath}/deleteAll/department'><span>Phòng
						ban</span></a>
			</div>
		</section>
	</section>
</body>

</html>
