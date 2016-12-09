<%-- 
    Document   : Eliminar
    Created on : 9/12/2016, 12:41:51 PM
    Author     : Brenda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Personaje</title>
    </head>
    <body>
        
        <h1>Eliminar Personaje</h1>
        <form action="Eliminar.jsp" method="post">
            <input type="numeric" placeholder="Codigo" name="codigo" required/><br>
            <button class="submit" type="submit">Eliminar</button> 
        </form>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	cl.services.webservices.PersonaWS_Service service = new cl.services.webservices.PersonaWS_Service();
	cl.services.webservices.PersonaWS port = service.getPersonaWSPort();
	 // TODO initialize WS operation arguments here
	int codigo = Integer.parseInt(request.getParameter("codigo"));
	// TODO process result here
	java.lang.String result = port.deletePersona(codigo);
	out.println("<h3><font color='green'>Persona Eliminada Correctamente</font></h3>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
<a href='index.jsp'> Inicio </a>
    </body>
</html>
