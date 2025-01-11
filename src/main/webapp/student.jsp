<table>
    <tr>
        <th>Student Code</th>
        <th>Full Name</th>
        <th>Address</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.studentCode}</td>
            <td>${student.fullName}</td>
            <td>${student.address}</td>
        </tr>
    </c:forEach>
</table>