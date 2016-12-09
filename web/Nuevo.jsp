<%-- 
    Document   : Nuevo
    Created on : 9/12/2016, 12:02:04 PM
    Author     : Brenda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Personaje</title>
    </head>
    <body>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	cl.services.webservices.PersonaWS_Service service = new cl.services.webservices.PersonaWS_Service();
	cl.services.webservices.PersonaWS port = service.getPersonaWSPort();
	 // TODO initialize WS operation arguments here
	int codigo = Integer.parseInt(request.getParameter("codigo"));
	java.lang.String nombre = request.getParameter("nombre");
	java.lang.String fechaNacimiento = request.getParameter("fechaNacimiento");
	java.lang.String fechaDesceso = request.getParameter("fechaDesceso");
	java.lang.String area = request.getParameter("area");
	// TODO process result here
	java.lang.String result = port.insertarNuevaPersona(codigo, nombre, fechaNacimiento, fechaDesceso, area);
	out.println("<h3><font color='green'>Persona Ingresada Correctamente</font></h3>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
        
    }
    %>
    <%-- end web service invocation --%><hr/>

        <h1>Nuevo Personaje</h1>
        <form action="Nuevo.jsp" method="post">
            <div> 
                <ul> 
                    <li> <label for="name">Codigo:</label> 
                        <input type="numeric" placeholder="Codigo" name="codigo" required/>
                    </li> 
                    <li> <label for="email">Nombre:</label> 
                        <input type="text" placeholder="Nombre" name="nombre" required/>  
                    </li> 
                    <li> <label for="website">Fecha de Nacimiento:</label> 
                        <input type="date" placeholder="Fecha Nacimiento" name="fechaNacimiento" required/>
                    </li> 
                    <li> <label for="message">Fecha de Desceso:</label> 
                        <input type="Date" placeholder="Fecha Desceso" name="fechaDesceso" required/> 
                    </li> 
                    <li> <label for="message">Area de especializacion:</label> 
                        <input type="text" placeholder="Area" name="area" required/>
                    </li> 
                    <li> <button class="submit" type="submit">Guardar</button> 
                    </li> 
                </ul> 
            </div>
        </form>
        <a href='index.jsp'> Inicio </a>
    </body>
</html>

