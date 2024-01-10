<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<main>
    <div class="container">
        <h2>장바구니 목록</h2>
        <table height="40%">
        <thead>
        <tr>      
        <th>물품번호</th>
        <th>이미지</th>
        <th>물품명</th>
        <th>현재가</th>
        <th>입찰횟수</th>
        <th>마감일</th>
        <th>관리</th> 
        </tr></thead>
            <thead> <c:forEach var="j" items="${li}">        
            <tr>
    <td><input type="checkbox" name="selectedItems" value="${j.pnum}"></td>
    <td>${j.pnum}</td>
    <td>${j.picture}</td>
    <td>${j.pname}</td>
    <td>${j.file1}</td>
    <td>${j.subject}</td>
    <td>${j.price}</td>
    <td>${j.readcnt}</td>
    <td>${j.regdate}</td>
    <td>
    </td>
</tr> </c:forEach> 
               <tr>
                    <td colspan="5" style="text-align: center;">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/jumun/jumunList1">구매</a>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/jumun/jumunList1">삭제</a>         
                    </td>
                </tr>   
            </thead>           
           </table>          
    </div>
</main>
</body>
</html>