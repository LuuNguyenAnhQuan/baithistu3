<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
</head>
<body>
<h2>Add Student</h2>
<form action="StudentServlet" method="post">
    <!-- Student Code -->
    <div>
        <label for="studentCode">Student Code</label>
        <input type="text" id="studentCode" name="studentCode" required />
    </div>

    <!-- Full Name -->
    <div>
        <label for="fullName">Full Name</label>
        <input type="text" id="fullName" name="fullName" required />
    </div>

    <!-- Address -->
    <div>
        <label for="address">Address</label>
        <input type="text" id="address" name="address" required />
    </div>

    <!-- Submit Button -->
    <div>
        <button type="submit">Add Student</button>
    </div>
</form>
</body>
</html>
