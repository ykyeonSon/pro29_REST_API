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
                var member = {id:"hong", name:"홍",pwd:"22",email:"dsj"};

                $.ajax({
                    type:"post",
                    url:"${contextPath}/test/info",
                    contentType: "application/json",
                    data :JSON.stringify(member),
                    success:function (data,textStatus){},
                    error:function(data,textStatus){alert("에러 발생");},
                    complete:function(data,textStatus){}
                });

                
            }

        );
    });




</script>

</head>
<body>


<input type="button" id ="checkJson" value="눌러보시오">





</body>
</html>