<!DOCTYPE html>

<%@ include file="../taglib.jsp" %>

<html lang="en">
<head>
	<title>WebFood Demo</title>
	<link type="text/css" href='<spring:url value="/resources/css/style.css"/>' rel="stylesheet" />
	<link type="text/css" href='<spring:url value="/resources/jquery/css/redmond/jquery-ui-1.8.21.custom.css"/>' rel="stylesheet" />	
	<script type="text/javascript" src='<spring:url value="/resources/jquery/js/jquery-1.7.2.min.js"/>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/jquery/js/jquery-ui-1.8.21.custom.min.js"/>'></script>
	<script>
	$(function() {
		
	});
	</script>
	
		
</head>
<body>

<div align="center">
<div class="site">
	<table class="tbl">
		<tbody>		  
		 <tr>
		 	<td colspan="2" class="header" >
		 		<span id="siteLogo">WebFood Demo</span>
		 	</td>
		 </tr>	
		 
		 <tr>
		    <td valign="top" colspan="2">
		    	<tiles:insertAttribute name="bodyContent"/>
		    </td>
		 </tr>
		 <tr class="footer" height="25">
	    	<td colspan="2">
	    		footer
	   		 </td>
		 </tr>
		</tbody>
	</table>	
</div>
</div>
</body>
</html>