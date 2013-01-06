<%
'connect database
'khai báo các biến cần dùng
'Dim Connection1 As new ADODB.Connection
'Dim rs As ADODB.Recordset
'Dim MyConString As String
'thiết lập chuỗi ConnectionString chứa các tham số về database
MyConString = "Provider=SQLOLEDB; Persist Security Info=False; SERVER=.; UID=sa; PWD=123; Initial Catalog=TicketStore; Port=1433"
'Tạo connection tới database
Set Connection1 = Server.CreateObject("ADODB.Connection")
Connection1.Open MyConString
'tạo 1 đối tượng Recordset
Set rs = Server.CreateObject("ADODB.Recordset")
With rs
Set .ActiveConnection = Connection1
'thiết lập lệnh truy vấn động theo yêu cầu
.Source = "SELECT * FROM Program " 
.Open
End With

' xu ly du lieu o day
'Response.write('s');
If Not rs.EOF Then
	while Not rs.EOF
		//Response.write rs.Fields("Name")
		rs.MoveNext
	wend
end if
'ket thuc xu ly du lieu 

'đóng các đối tượng đã dùng
rs.Close
Connection1.Close
Set rs = Nothing
Set Connection1 = Nothing
%>