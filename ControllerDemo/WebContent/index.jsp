<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="DomusDemo.Client"%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>DOMUS - House Automation</title>

	<!-- Bootstrap -->
	<link href="resources/bootstrap-3.3.4-dist/css/bootstrap.min.css"
	rel="stylesheet">

	<link href="resources/style.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
  </head>
  <body>
  	<jsp:useBean id="remote_object" scope="session"
  	class="DomusDemo.Client" />


  	<div class="container-fluid">
  		<!-- HEADER -->
  		<div class="row page-header">
  			<h1>
  				<span id="title-icon" class="glyphicon glyphicon-home"
  				aria-hidden="true"></span> DOMUS <small>Here's what's
  				happening in your house</small>
  			</h1>
  		</div>
  		<div class="row well" id="lighting">
  			<div class="col-md-4">
  				<h3>Lighting</h3>
  			</div>

  			<div class="col-md-6">
  				<div class="row">
  					<div class="col-md-4">kitchen</div>
  					<div class="col-md-2">
<%
if (remote_object.getLightState(0))
	out.print("<a href=\"setLight.jsp?state=off&room=0\"><span class=\"label label-success\">on</span></a>");
else
	out.print("<a href=\"setLight.jsp?state=on&room=0\"><span class=\"label label-danger\">off</span></a>");
%>
  					</div>
  				</div>
  				<div class="row">
  					<div class="col-md-4">living room</div>
  					<div class="col-md-2">
  						<%
  						if (remote_object.getLightState(1))
  							out.print("<a href=\"setLight.jsp?state=off&room=1\"><span class=\"label label-success\">on</span></a>");
  						else
  							out.print("<a href=\"setLight.jsp?state=on&room=1\"><span class=\"label label-danger\">off</span></a>");
  						%>
  					</div>

  				</div>
  				<div class="row">
  					<div class="col-md-4">bathroom</div>
  					<div class="col-md-2">
  						<%
  						if (remote_object.getLightState(2))
  							out.print("<a href=\"setLight.jsp?state=off&room=2\"><span class=\"label label-success\">on</span></a>");
  						else
  							out.print("<a href=\"setLight.jsp?state=on&room=2\"><span class=\"label label-danger\">off</span></a>");
  						%>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
  	<!--end container-->


  </body>
  </html>
