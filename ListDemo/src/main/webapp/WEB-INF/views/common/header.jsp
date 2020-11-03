<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>header</title>
</head>
<body>
<table border=0  width="100%">
  <tr>
     <td>
		<a href="${contextPath}/main.do">
			<img src="${contextPath}/resources/image/dukes.png" style="width:100px;height:100px;" />
		</a>
     </td>
     <td>
       <h1><font size=20>for associate developers!</font></h1>
     </td>
     <td>
       <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
            <h3>Wellcome ${member.name } !!</h3>
            <a href="${contextPath}/member/logout.do"><h3>Log out</h3></a>
          </c:when>
          <c:otherwise>
	        <a href="${contextPath}/member/loginForm.do"><h3>Log in</h3></a>
	      </c:otherwise>
	   </c:choose>     
     </td>
  </tr>
</table>


</body>
</html>