<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="file-box"> 
	<form id="uploadForm"> 
		<input type="text" id="textfield" class="txt" />
		<input type="button" class="btn" value="浏览..." /> 
		<input type="file" name="file" class="file" id="fileField" onchange="document.getElementById('textfield').value=this.files[0].name"/> 
		<input type="submit" class="btn" value="上传" /> 
	</form> 
</div>
</body>
</html>