<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Menu</title>
<link rel="stylesheet" href="/public/css/style.css" type="text/css"/>
</head>

<body>
	<aside class="sidebar">
		<div class="leftside-navigation" class="nano">
			<ul class="nano-content">
				<li><a href="${pageContext.request.contextPath}/home"> <span>Trang
							chủ</span>
				</a></li>
				<li><a href="${pageContext.request.contextPath}/staff"> <span>Xem
							nhân viên</span>
				</a></li>
				<li class="sub-menu"><a
					href="${pageContext.request.contextPath}/department"><span>Xem
							phòng ban</span> </a></li>
				<li class="sub-menu"><a href="${pageContext.request.contextPath}/search"><span>Tìm kiếm</span> </a></li>
				<li class="sub-menu"><a href="#"> <span>Cập nhập
							thông tin</span>
				</a></li>
				<li class="sub-menu"><a href="#"> <span>Xoá thông
							tin</span>
				</a></li>
				<li class="sub-menu"><a href="#"> <span>Xoá tất cả</span>
				</a></li>
				<li class="sub-menu"><a href="#"> <span>Trợ giúp
							chương trình</span>
				</a></li>
			</ul>
		</div>
	</aside>
</body>

</html>