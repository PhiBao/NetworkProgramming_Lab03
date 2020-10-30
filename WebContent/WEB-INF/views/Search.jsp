<%@page import="model.Department"%>
<%@page import="dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Tìm kiếm</title>
<link rel="stylesheet" href="/public/css/table.css" type="text/css"
	media="all" />
</head>

<body>
	<section class="container">
		<jsp:include page="_menu.jsp"></jsp:include>
		<jsp:include page="_rightPart.jsp"></jsp:include>
		<jsp:include page="_footer.jsp"></jsp:include>
		<!--main content start-->
		<section class="main-content">
			<div>
				<i class="title">Bạn cần tìm gì?</i>
			</div>
			<div class="search-tag">
				<form action='${pageContext.request.contextPath}/search/staff'
					method='post'>
					<label for="idnv">Nhân viên:</label>
					<span class="form-search"><input TYPE='text' size='20' id="idnv"
						name='txt-idnv' placeholder="Tìm Kiếm Theo IDNV" /> </span> <INPUT
						class="button" TYPE='Submit' value='Tìm kiếm'>
				</form>
			</div>
			<div class="search-tag">
				<form action='${pageContext.request.contextPath}/search/department'
					method='post'>
					<label for="idpb">Phòng ban:</label>
					<span class="form-search"><input TYPE='text' size='20' id="idpb"
						name='txt-idpb' placeholder="Tìm Kiếm Theo IDPB" /> </span> <INPUT
						class="button" TYPE='Submit' value='Tìm kiếm'>
				</form>
			</div>
		</section>
	</section>
</body>

</html>