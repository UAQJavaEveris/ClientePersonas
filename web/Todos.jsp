<%-- 
    Document   : Todos
    Created on : 9/12/2016, 12:45:21 PM
    Author     : Brenda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>   
        <h1>Lista de Personajes</h1>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	cl.services.webservices.PersonaWS_Service service = new cl.services.webservices.PersonaWS_Service();
	cl.services.webservices.PersonaWS port = service.getPersonaWSPort();
	// TODO process result here
	java.util.List<cl.services.webservices.Persona> result = port.consultarTodo();
        out.println("<table border='1'>");
        for(int i=0; i<result.size();i++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getCodigo()+"</td>");
            out.println("<td>"+result.get(i).getNombre()+"</td>");
            out.println("<td>"+result.get(i).getFechaNacimiento()+"</td>");
            out.println("<td>"+result.get(i).getFechaDesceso()+"</td>");
            out.println("<td>"+result.get(i).getArea()+"</td>");
            out.println("<td><a href='Actualizar.jsp'> Editar </a></td>");
            out.println("<td><a href='Eliminar.jsp'> Eliminar </a></td>");
            out.println("<tr>");
        }
        out.println("</table>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    <a href='index.jsp'> Inicio </a>
    </body>
</html>
