<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>administrator</title>
<<<<<<< HEAD
</head>
<body>
<jsp:include page="item3.jsp"/>

<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            	원하는걸 눌ㄹ러러럴러러럴!! 뾰로롱!!
=======
<script type="text/javascript">
var searchRequest = new XMLHttpRequest();

function searchFunction() {
	var url = "./stockList?category=" + encodeURIComponent(document.getElementById("category").value);
	searchRequest.open("post",url,true);
	searchRequest.onreadystatechange = searchProcess;
	searchRequest.send(null);
}

function searchProcess() {

	if(searchRequest.readyState == 4 && searchRequest.status == 200) {
		
		var table = document.getElementById("ajaxTable");
		table.innerHTML = "";
		
		var object = eval("(" + searchRequest.responseText + ")");	
		var result = object.result;

		for (var i = 0; i < result.length; i++) {
			var row = table.insertRow(0);
			for (var j = 0; j < result[i].length; j++) {
				var cell = row.insertCell(j);
				cell.innerHTML = result[i][j].value;
			}
		}
	}
}


</script>




</head>
<body>
<jsp:include page="item3.jsp"/>

<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            <div align="right">
            	 <select id="category" onchange="searchFunction()">
                    <option value ="1">--카테고리 선택--</option>
                        <option value="TOP">TOP</option>
                        <option value="BOTTOM">BOTTOM</option>
                        <option value="ACC">ACC</option>	
               </select>
              </div> 
              
              <table class="table" align="center" style="text-align : center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #fafafa; text-align: center;">상품번호</th>
						<th style="background-color: #fafafa; text-align: center;">상품명</th>
						<th style="background-color: #fafafa; text-align: center;">색상</th>
						<th style="background-color: #fafafa; text-align: center;">사이즈</th>
						<th style="background-color: #fafafa; text-align: center;">수량</th>
					</tr>
				</thead>
				<tbody id="ajaxTable">
					<tr>
						
					</tr>
				
					</tbody>		
				</table>
              
>>>>>>> branch 'master' of https://github.com/LeeHwaYoung4017/SpringProjectHomeShop.git
            </div>
         </div>
</div>   
</body>
</html>