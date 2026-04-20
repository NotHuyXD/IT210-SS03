<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Danh sách nhân sự phòng Đào tạo</title>
</head>
<body>
    <h2>Danh sách Nhân viên</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Họ Tên</th>
                <th>Phòng Ban</th>
                <th>Lương</th>
                <th>Đánh giá</th> </tr>
        </thead>
        <tbody>

            <c:forEach var="emp" items="${employees}">
                <tr>
                    <td>${emp.id}</td>
                    <td>${emp.fullName}</td>
                    <td>${emp.department}</td>
                    <td>${emp.salary}</td>
                    <td>

                        <c:choose>
                            <c:when test="${emp.salary >= 10000}">
                                <strong>Mức lương cao</strong>
                            </c:when>
                            <c:otherwise>
                                Mức lương cơ bản
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>