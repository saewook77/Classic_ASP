<%@ Language = VBScript %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<meta charset="utf-8" />
</head>
<body>
    <table>
   <tr>
       <td>이름</td>
       <td><%=strName%></td>
       <td>등록일</td>
       <td><%=dtmReg_Date%></td>
   </tr>
   <tr>
       <td>Email</td>
       <td><a href="mailto:<%=strEmail%>"><%=strEmail%></a></td>
       <td>조회</td>
       <td><%=intCount%></td>
   </tr>
   <tr>
       <td>제목</td>
        <td colspan="3"><%=strSubject%></td>
   </tr>
   <tr>
       <td colspan="4" style="padding:15px;"><%=strContent%></td>
   </tr>
   <tr>
       <td colspan="4" align= "center">
           <a href="edit/edit.asp?seq=<%=intSeq%>">수정하기</a>
           <a href="list.asp">목록으로</a>
           <a href="delete/delete.asp?seq=<%=intSeq%>">삭제하기</a>
       </td>
   </tr>
</table>
</body>
</html>
