<!-- /*
 * 08-600 Java and J2EE Programming
 * Homework #9
 * Anjal Patni
 * apatni
 * 9th December 2014
 */ -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="pragma" content="no-cache">
	<title>Favorite Sharing Website</title>
	<style>
		.menu-head {font-size: 10pt; font-weight: bold; color: black; }
		.menu-item {font-size: 10pt;  color: black }
		.heading {font-size: 12pt; font-weight: bold; color: black; }
    </style>
</head>

<body>

<table cellpadding="4" cellspacing="0">
    <tr>
	    <!-- Banner row across the top -->
        <td width="130" bgcolor="#47B7E8">
            <img border="0" src="URL.png" height="75">
        <td bgcolor="#47B7E8">&nbsp;  </td>
        <td width="500" bgcolor="#47B7E8">
            <p align="center">
            	<c:choose>
					<c:when test="${ (empty title) }">
						<font size="7">Favorite Sharing Website</font>
					</c:when>
					<c:otherwise>
						<font size="5">${title}</font>
					</c:otherwise>
				</c:choose>
			</p>
		</td>
    </tr>
	
	<!-- Spacer row -->
	<tr>
		<td bgcolor="#47B7E8" style="font-size:5px">&nbsp;</td>
		<td colspan="2" style="font-size:5px">&nbsp;</td>
	</tr>
	
	<tr>
		<td bgcolor="#47B7E8" valign="top" height="500">
			<!-- Navigation bar is one table cell down the left side -->
            <p align="left">
            	<c:choose>
					<c:when test="${ (empty user) }">
						<span class="menu-item"><a href="login.do">Login</a></span><br/>
						<span class="menu-item"><a href="register.do">Register</a></span><br/>
						<span class="menu-item">&nbsp;</span><br/>
					</c:when>
					<c:otherwise>
						<span class="menu-head">${user.firstName} ${user.lastName}</span><br/>
						<span class="menu-item"><a href="manage.do">Manage Your Favorites</a></span><br/>
						<span class="menu-item"><a href="change-pwd.do">Change Password</a></span><br/>
						<span class="menu-item"><a href="logout.do">Logout</a></span><br/><br/>
					</c:otherwise>
				</c:choose>
				<span class="menu-head">Favorites From:</span><br/>
				<c:forEach items="${userList}" var="listedUser">
					<c:if test="${user.id != listedUser.id }">
						<span class="menu-item">
							<a href="list.do?id=${listedUser.id}">${listedUser.firstName} ${listedUser.lastName}</a>
						</span>
						<br/>
					</c:if>
				</c:forEach>
			</p>
		</td>
		
		<td>
			<!-- Padding (blank space) between navbar and content -->
		</td>
		<td  valign="top">
