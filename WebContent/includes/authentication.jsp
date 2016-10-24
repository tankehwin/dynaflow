<%
	LoginModel userLogin = (LoginModel) session.getAttribute("userLogin");
	if(userLogin == null) {
		String redirectURL = "index.jsp";
	    response.sendRedirect(redirectURL);
	    return; 
	 	// it is important to execute return after a sendRedirect to prevent the following error:
	    // java.lang.IllegalStateException: Cannot call sendRedirect() after the response has been committed
	}
	else{
%>
<table class="formtable">
	<tr>
		<td align="right" width="100%">Welcome, <%=userLogin.getName() %>.
		&nbsp;
		<a href="profile.jsp">Edit User Profile</a>
		&nbsp;
		<a href="index.jsp">Logout</a>
		</td>
	</tr>
</table>
<%		
	}
	
%>
