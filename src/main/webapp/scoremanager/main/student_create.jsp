<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:import url="/common/base.jsp">
	<c:param name="title">
		得点管理システム
	</c:param>

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
