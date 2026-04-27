<%-- メニューJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:import url="/common/base.jsp">
	<c:param name="title">
		得点管理システム
	</c:param>
	<c:param name="scripts"></c:param>
	
	<c:param name="content">
		<section class="me-4">
    <h2 class="h3 fw-normal bg-secondary bg-opacity-10 py-2 px-4">メニュー</h2>

    <div class="px-4 fs-3 my-5 d-flex flex-column gap-3">

        <div class="d-flex align-items-center justify-content-center rounded shadow"
             style="height: 5rem; background-color: #dbb;">
            <a href="StudentList.action"
               class="w-100 h-100 d-flex align-items-center justify-content-center text-primary text-decoration-underline">
                学生管理
            </a>
        </div>

        <div class="d-flex align-items-center justify-content-center rounded shadow"
             style="height: 5rem; background-color: #bdd;">
            <a href="TestRegist.action"
               class="w-100 h-100 d-flex align-items-center justify-content-center text-primary text-decoration-underline">
                成績登録
            </a>
        </div>

        <div class="d-flex align-items-center justify-content-center rounded shadow"
             style="height: 5rem; background-color: #bdb;">
            <a href="TestList.action"
               class="w-100 h-100 d-flex align-items-center justify-content-center text-primary text-decoration-underline">
                成績参照
            </a>
        </div>

        <div class="d-flex align-items-center justify-content-center rounded shadow"
             style="height: 5rem; background-color: #bbd;">
            <a href="SubjectList.action"
               class="w-100 h-100 d-flex align-items-center justify-content-center text-primary text-decoration-underline">
                科目管理
            </a>
        </div>

        <div class="d-flex align-items-center justify-content-center rounded shadow"
             style="height: 5rem; background-color: #ddb;">
            <a href="ClassList.action"
               class="w-100 h-100 d-flex align-items-center justify-content-center text-primary text-decoration-underline">
                クラス管理
            </a>
        </div>
    </div>
</section>
	</c:param>
</c:import>
