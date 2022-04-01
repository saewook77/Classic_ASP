<%@ Language = VBScript %>

<%
    Option Explicit
    
    Dim objDBConn
    Dim objRs

    Dim strSQL
    
    Dim BOARD_NO, TITLE, REG_DT, strCount

    Set objDBConn = Server.CreateObject("ADODB.Connection")
    Set objRs = Server.CreateObject("ADODB.RecordSet")

    objDBConn.ConnectionString="Provider=SQLOLEDB.1;Password=sql3950;Persist Security Info=True;User ID=goodsdaq;Initial Catalog=EVENT;Data Source=gdevdb01, 3950"
    objDBConn.Open

    strSQL = "select top 10  BOARD_NO, TITLE, REG_DT from dbo.EVENT_BOARD"

    objDBConn.Execute strSQL
    objRs.Open strSQL, objDBConn

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<meta charset="utf-8" />
</head>
<body>   
   <h1><%=strCount%></h1> 
    <table border="1">
       <tr align="center">
            <td>번호</td>
            <td>제목</td>
            <td>등록일</td>
       </tr>

      <% If objRs.BOF or objRs.EOF Then %>
       <tr>
           <td>등록된 게시가 없습니다</td>
       </tr>

        <%
            Else
                Do Until objRs.EOF    
        %>
       <tr>
            <td><%=objRs(0)%></td>
            <td><%=objRs(1)%></td>
            <td><%=objRs(2)%></td>
       </tr>
        <% 
            objRs.MoveNext
            Loop
            End If
            
            objRs.Close
            Set objRs = nothing
            objDBConn.Close
            Set objDBConn = nothing
            
         %>



    <!--   <tr>
           <td colspan="4" align= "center">
               <a href="edit/edit.asp?seq=<%=intSeq%>">수정하기</a>
               <a href="list.asp">목록으로</a>
               <a href="delete/delete.asp?seq=<%=intSeq%>">삭제하기</a>
           </td>
       </tr>-->
    </table>
</body>
</html>
