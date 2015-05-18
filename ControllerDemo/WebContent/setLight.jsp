<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>DOMUS - House Automation</title>
</head>
<body>
	...wait...

	<jsp:useBean id="remote_object" scope="session" 
		class="DomusDemo.Client" />
	<%
		try {
			String state = request.getParameter("state");
			String tmpRoom = request.getParameter("room");
			int room = Integer.parseInt(tmpRoom);
			
			if(state.equals("on")) {
				remote_object.setLightState(room, true);
			} else {
				remote_object.setLightState(room, false);
			}
			
		} catch (Exception e) {	}
		response.sendRedirect("index.jsp");
	%>
</body>
</html>