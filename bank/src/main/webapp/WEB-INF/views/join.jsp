<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
<link rel="stylesheet" href="./css/menu.css">
<script src="./js/jquery-3.7.0.min.js"></script>
<link href="./css/styles.css" rel="stylesheet" />
<script type="text/javascript">
	$(function() {
		$("#idCheck").click(function() {
			let mid = $("#mid").val();
			//alert("!");
			if (mid.length < 5) {
				$("#mid").focus();
				$("#resultMSG").text("ID MUST HAVE MORE THAN 4 LETTERS");
			} else {
				$.ajax({
					url : "./checkID",
					type : "post",
					data : {
						"mid" : mid
					},
					dataType : "json",

					success : function(data) {
						//alert(data.result);
						if (data.result == 1) {
							$("#mid").css("background-color", "red");
							$("#mid").focus();
							$("#resultMSG").text("이미 등록된 ID");
						} else {
							$("#resultMSG").text("가능");
						}

						//$("#resultMSG").text(data.result);
					},

					error : function(error) {

						$("#resultMSG").text("er");
					}
				});

			}

		});

	});

	$(function() {

		$(".modalOpen").click(function() {
			$(".detail-content")
			$("#exampleModal").modal("show");

		});
	});
	
</script>
</head>
<body>
<%@ include file="menu.jsp" %>
	<div class="join">
		<form action="./join" method="post">

			<h1 style="font-size: xx-large;">회원가입</h1>

			<div class="title">

				아이디<input type="text" name="mid" id="mid"><br>
				<button id="idCheck" type="button">CHECK</button>
				<br> <span id="resultMSG"></span><br> 비밀번호<input
					type="password" name="mpw"> <br> 비밀번호 확인 <input
					type="password" name="mpw2"> <br> 이름<input type="text"
					name="mname"><br> 성별
				<div class="select">
					<input type="radio" id="select" name="mgender" value="male">
					<label for="select">MALE</label> <input type="radio" id="select2"
						name="mgender" value="felmale"> <label for="select2">FEMALE</label>

				</div>
				<br> 생년월일 <input type="date" name="mbirth"><br> 주소
				<input type="text" name="maddr"><br>




				<!-- 모달 여는 스크립트 만들기 -->
				<button type="button" class="modalOpen">NEXT</button>
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<!-- 제목 적기 -->
								<h5 class="modal-title" id="exampleModalLabel">계좌번호 생성</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="detail-detail">

									<div class="detail-date-read">
									</div>
									<div class="detail-content" >계좌번호 :  ${account } </div>
									<input type="hidden" name="maccount" value="${account }"> 
									
									비밀번호 생성:
									<input type="password" name="mapw">
								</div>
								<button>가입</button>
								<br>
							</div>
						</div>
					</div>
				</div>
			</div>

		</form>

	</div>

	<!-- modal -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>


</body>
</html>