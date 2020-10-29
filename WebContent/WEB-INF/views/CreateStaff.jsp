<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Staff	</title>
</head>
<body>
	<section class="container" class="">
	
            <jsp:include page="_menu.jsp"></jsp:include>
            <jsp:include page="_rightPart.jsp"></jsp:include>
            <jsp:include page="_footer.jsp"></jsp:include>
                <!--main content start-->
                <section class="main-part" >
                    <div>
                        <i class="fas fa-pen-nib">Điền Thông Tin Nhân Viên</i>
                    </div>
                    <div class="clearfix"></div>
                    <form action="XuLyTaoHoSoNhanVien" method="POST">
                    <%
                        response.setCharacterEncoding("UTF-8");
                        request.setCharacterEncoding("UTF-8");
                    %>
                    <div>
                        <div>
                            <span>
                                <input style="margin-left: 417px;" type="text" name="Marital_Status" placeholder="TT Hôn Nhân" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="Last_Name" placeholder="Họ" required />
                                <input type="text" name="Ethnicity" placeholder="Dân Tộc" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="First_Name" placeholder="Tên Lót+Tên" required />
                                <input type="text" name="Drivers_License" placeholder="Giấy Phép Lấy Xe" required /></span>
                        </div>
                        <div>
                            <span>
                                <span style="margin-left: 178px;">
                                    <select style="font-size: 17px;" name="Gender">
                                        <option value="1">Nam</option>
                                        <option value="0">Nữ</option>
                                    </select>
                                </span>
                                <input type="text" name="SSN" placeholder="Số An Sinh Xã Hội" required /></span>
                        </div>
                        <div>
                            <span><input type="email" name="email" placeholder="Email" required />
                                <span style="margin-left: 178px;" >
                                    <select style="font-size: 17px;" name="shareholder">
                                        <option >Thuộc Cổ Đông Công Ty?</option>
                                        <option value="1">Có</option>
                                        <option value="0">Không</option>
                                    </select>
                                </span>
                            </span>
                        </div>
                        <div>
                            <span><input type="date" name="birthday" required />
                                <label>Ngày Sinh</label>
                                <input type="text" name="states" placeholder="Huyện/Quận" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="city" placeholder="Tỉnh/Thành Phố" required />
                                <input type="number" name="zip" placeholder="Zipcode" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="Address" placeholder="Địa Chỉ Thường Trú" required />
                                <input type="text" name="Phone_Number" placeholder="Số Điện Thoại" required /></span>
                        </div>
                        <!--Bảng Employment-->
                        <div>
                            <span><input type="date" name="Hire_Date"  required />
                                <label>Ngày Cộng Tác</label>
                                <input type="date" name="Termination_Date"  required /></span>
                            <label>Ngày Kết Thúc</label>
                        </div>
                        <div>
                            <input style="margin-left: 417px;" type="submit" value="Tạo Mới" />
                        </div>
                    </div>
                </form>
            </section>
        </section>
</body>
</html>