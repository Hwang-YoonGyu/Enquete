<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<script languege="JavaScript">
   byte[] bydata = ${bydata};
   
   var base64 = Convert.ToBase64String(bydata);
   var imgSrc = String.Format("data:image/jpg;base64,{0}", base64);

</script>
<body>
   <!-- img�±��� src ��δ� byte�̹��� �������� ��Ʈ�ѷ� ȣ��(/getByteImage) -->
   <img alt="" src="${imgSrc}" />
</body>


</html>