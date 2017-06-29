<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
</head>
<body>
<h1>Get Customer Details !!

</h1>
<html:form action="/customer.do" >
Get Customers Info :<html:submit value="GetDetails"/>
</html:form>
<%   String ip = request.getHeader("X-Forwarded-Host");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        %>

<%  String serverIP = request.getLocalAddr(); %>

 <div style="position: absolute; bottom: 15; right: 55; text-align:center;">
	<% out.println( " Your-IPAddress:"+ip ); %>
</div>
 <div style="position: absolute; bottom: 15; left: 55 ; text-align:center;">
	<% out.print( "<BR> WEBSERVER-IPAddress:"+serverIP ); %>
</div>
</body>
</html>
