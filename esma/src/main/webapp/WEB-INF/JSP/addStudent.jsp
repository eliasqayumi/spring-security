<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Student</title>
</head>
<body>
<div class="container">
    <form action="/student/add" method="post">
        <label for="name">FirstName</label>
        <input class="inputs" id="name" name="name" placeholder="Firstname" required/> <br/>
        <label for="surname">Surname</label>
        <input type="text" id="surname" name="surname" placeholder="Surname" required><br>
        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone" placeholder="Phone" required><br>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="example@mail.com" required><br>
        <label for="department">Department</label>
        <select name="department" id="department">
            <c:forEach var="department" items="${departments}">
                <option value="${department.id}">${department.name}</option>
            </c:forEach>
        </select>
        <label for="enrolDate">Enrol Date</label>
        <input type="date" name="enrolDate" id="enrolDate" required>
        <label for="class">Class</label>
        <select name="classes" id="class">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
        </select>
        <input type="submit" name="submit" value="Add new Subject">
    </form>
</div>
</body>
</html>
