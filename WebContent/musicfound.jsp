<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<style>
	@import url('a.css');
</style>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<script>
			function confirm_delete() {
				if (window.confirm("是否确认删除？")) {
					return true;
				} else {
					return false;
				}
			}
			function c(){
				
			}
		</script>
	</head>
	<%
		String userid = "admin";
		session.setAttribute("userid", userid);

    %>
	<body>		
		<div align="center">
			<input type="text" id="name">
			<input type="button" onclick="c()" value=“搜索”>
		</div>
		<form>
			<table width="100%" border="1">
				<tr align="center">
					<th>歌名</th>
					<th>歌手</th>
					<th>时长</th>
					<th>歌曲风格</th>
					<th>专辑</th>
					<th>发布时间</th>
				</tr>
                <%
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
                    String url="jdbc:sqlserver://localhost:1433;DatabaseName=music";
                    String user = "qh", password="123";
                    Connection conn= DriverManager.getConnection(url,user,password);
                    String sql = "select * from music ";
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(sql);
                    while (rs.next())
                    {
                %>
                <tr align="center">
                    <td><%=rs.getString("歌手")%></td>
                    <td><%=rs.getString("歌名")%></td>
                    <td><%=rs.getString("时长")%></td>
                    <td><%=rs.getString("歌曲风格")%></td>
                    <td><%=rs.getString("专辑")%></td>
                    <td><%=rs.getString("发布时间")%></td>
                </tr>
                <%
                    } // end for while(rs.next())
                    rs.close();
                    stmt.close();
                    conn.close();
                %>


			</table>
			
		</form>
	</body>
</html>
