<%@ page import="java.util.List" %>
<%@ page import="org.java.demo.entity.Student" %>
<%@ page import="org.java.demo.entity.Subject" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Score</title>
</head>
<body>
<h2>Add Score</h2>
<form action="ScoreServlet" method="post">
    <!-- Student Dropdown -->
    <div>
        <label for="studentId">Student</label>
        <select name="studentId" required>
            <option value="">Select a Student</option>
            <%
                // Lấy danh sách sinh viên từ request
                List<Student> students = (List<Student>) request.getAttribute("students");
                if (students != null) {
                    for (Student student : students) {
            %>
            <option value="<%= student.getStudentId() %>"><%= student.getFullName() %></option>
            <%
                    }
                }
            %>
        </select>
    </div>

    <!-- Subject Dropdown -->
    <div>
        <label for="subjectId">Subject</label>
        <select name="subjectId" required>
            <option value="">Select a Subject</option>
            <%
                // Lấy danh sách môn học từ request
                List<Subject> subjects = (List<Subject>) request.getAttribute("subjects");
                if (subjects != null) {
                    for (Subject subject : subjects) {
            %>
            <option value="<%= subject.getSubjectId() %>"><%= subject.getSubjectName() %></option>
            <%
                    }
                }
            %>
        </select>
    </div>

    <!-- Score Inputs -->
    <div>
        <label for="score1">Score 1</label>
        <input type="number" step="0.01" name="score1" required />
    </div>

    <div>
        <label for="score2">Score 2</label>
        <input type="number" step="0.01" name="score2" required />
    </div>

    <!-- Submit Button -->
    <div>
        <button type="submit">Add Score</button>
    </div>
</form>
</body>
</html>
