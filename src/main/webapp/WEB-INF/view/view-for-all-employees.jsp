<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h2>Information for all Employees</h2>
<br><br>
<security:authorize access="hasRole('HR')">
    <h2>
        <input type="button" value="Salary" onclick="window.location.href = 'hr_info'">
        Only for HR staff
    </h2>
</security:authorize>
<br><br>
<security:authorize access="hasRole('MANAGER')">
    <h2>
        <input type="button" value="Performance" onclick="window.location.href = 'manager_info'">
        Only for Managers
    </h2>
</security:authorize>
</body>
</html>