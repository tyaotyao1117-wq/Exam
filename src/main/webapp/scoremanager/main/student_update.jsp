<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="studentUpdateExecute" method="post">
    <input type="hidden" name="id" value="${student.id}">

    名前: <input type="text" name="name" value="${student.name}"><br>
    クラス:
    <input type="text" name="classNum" value="${student.classNum}"><br>

    <input type="submit" value="更新">
</form>

<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>