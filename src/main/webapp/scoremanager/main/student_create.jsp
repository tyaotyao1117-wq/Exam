<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:import url="/common/base.jsp">
	<c:param name="title">
		得点管理システム
	</c:param>
<%-- 学生登録JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:import url="/common/base.jsp" >
	<c:param name="title">
		得点管理システム
	</c:param>

	<c:param name="scripts"></c:param>

	<c:param name="content">
		<section>
			<h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">学生情報登録</h2>
			<form action="StudentCreateExecute.action" method="get">
				<div>
					<label for="ent_year">入学年度</label>
					<select class="form-select" id="ent_year" name="ent_year">
						<option value="0">--------</option>
						<c:forEach var="year" items="${ent_year_set }">
							<%-- 現在のyearと選択されていたent_yearが一致していた場合selectedを追記 --%>
							<option value="${year }" <c:if test="${year==ent_year }">selected</c:if>>${year }</option>
						</c:forEach>
					</select>
				</div>
				<div class="mt-2 text-warning">${errors.get("1") }</div>
				<div>
					<label for="no">学生番号</label><br>
					<input class="form-control" type="text" id="no" name="no" value="${no }" required maxlength="10" placeholder="学生番号を入力してください" />
				</div>
				<div class="mt-2 text-warning">${errors.get("2") }</div>
				<div>
					<label for="name">氏名</label><br>
					<input class="form-control" type="text" id="name" name="name" value="${name }" required maxlength="30" placeholder="氏名を入力してください" />
				</div>
				<div class="mx-auto py-2">
					<label for="class_num">クラス</label>
					<select class="form-select" id="class_num" name="class_num">
						<c:forEach var="num" items="${class_num_set }">
							<%-- 現在のnumと選択されていたclass_numが一致していた場合selectedを追記 --%>
							<option value="${num }" <c:if test="${num==class_num }">selected</c:if>>${num }</option>
						</c:forEach>
					</select>
				</div>
				<div class="mx-auto py-2">
					<button class="btn btn-secondary" id="create-button" name="end">登録して終了</button>
				</div>
			</form>
			<a href="StudentList.action">戻る</a>
		</section>
	</c:param>
</c:import>
	<c:param name="scripts">
		<script type="text/javascript">
		
		</script>
	</c:param>

	<c:param name="content">
		<section class="w-75 text-center m-auto border pb-3">
			<form action = "StudentCreate.action" method="post">
				<div id="wrap_box">
					<h2 class="h3 mb-3 fw-normal bg-secondary bg-opacity-10 py-2">学生登録</h2>
				
					<div>
					<!-- 入学年度 -->
						<div class="form-floating mx-5">
							<input class="form-control px-5 fs-5" autocomplete="on"
								id="entYear-input" maxlength="10" name="no" placeholder="半角でご入力下さい"
								style="ime-mode: disabled" type="text" value="${entYear}" required />
							<label>入学年度</label>
						
						</div>
						<br>
						
					<!-- 学生番号 -->
						<div class="form-floating mx-5">
							<input class="form-control px-5 fs-5" autocomplete="on"
								id="no-input" maxlength="10" name="no" placeholder="半角でご入力下さい"
								style="ime-mode: disabled" type="text" value="${no}" required />
							<label>学生番号</label>
						</div>
						<br>
						<!-- 氏名 -->
						<div class="form-floating mx-5">
							<input class="form-control px-5 fs-5" autocomplete="on"
								id="name-input" maxlength="20" name="name" placeholder="氏名を入力してください"
								style="ime-mode: disabled" type="text" value="${name}" required />
							<label>氏名</label>
						</div>
						
						<!-- クラス番号 -->
						<div class="form-floating mx-5 mt-3">
							<input class="form-control px-5 fs-5" autocomplete="on"
								id="classNum-input" maxlength="5" name="classNum"
								placeholder="20文字以内の半角英数字でご入力下さい" style="ime-mode: disabled"
								type="text" value="${classNum }" required />
							<label>クラス番号</label>
						</div>
					</div>

					<div class="mt-4">
						<input class="w-25 btn btn-lg btn-primary" type="submit" name="create" value="登録して終了"/>
					</div>
				</div>
			</form>
		</section>
	</c:param>
</c:import>
