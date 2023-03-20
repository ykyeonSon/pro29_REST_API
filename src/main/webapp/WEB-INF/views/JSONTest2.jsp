<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

    <c:set var="contextPath" value="${pageContext.request.contextPath}"  />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>  

<script>

    $(function () {
        $("#checkJson").click(
            function () {
                var article = {
                		articleNO:"114", 
     	               writer:"박지성",
     	               title:"안녕하세요2", 
     	               content:"상품 소개 글입니다."
                		
                };

                $.ajax({
                    //type:"get",
                    //type:"post",
                    type:"delete",
                    //url:"${contextPath}/boards",
                    url:"${contextPath}/boards/114",
                    contentType: "application/json",
                    data :JSON.stringify(article),
                    success:function (data,textStatus){
                    	alert(data);
                    },
                    error:function(data,textStatus){alert("에러 발생");},
                    complete:function(data,textStatus){}
                });

                
            }

        );
    });




</script>

</head>
<body>


<input type="button" id ="checkJson" value="삭제하기">





</body>
</html>