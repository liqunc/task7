<!-- /*
 * 08-600 Java and J2EE Programming
 * Homework #9
 * Anjal Patni
 * apatni
 * 9th December 2014
 */ -->

<jsp:include page="template-top.jsp" />

<p style="font-size:medium">
	Please login below or click <a href="register.do">here</a> to register as a new user.
</p>


<p>
	<form method="post" action="login.do">
		<table>
			<tr>
				<td> E-mail Address: </td>
				<td><input type="text" name="username" value="${form.username}"/></td>
			</tr>
			<tr>
				<td> Password: </td>
				<td><input type="password" name="password" value=""/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="button" value="Login"/>
				</td>
			</tr>
		</table>
	</form>
</p>

<jsp:include page="template-bottom.jsp" />
