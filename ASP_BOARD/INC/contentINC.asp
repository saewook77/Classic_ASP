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
