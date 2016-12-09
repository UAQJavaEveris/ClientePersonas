<%-- 
    Document   : index
    Created on : 9/12/2016, 11:27:23 AM
    Author     : Brenda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personajes Famosos</title>
    </head>
    <body>
        <!-- menu -->
        <div id="menu">
            <ul>
             <li><a href="#" title="...">Home</a></li>
             <li><a href="Nuevo.jsp" title="...">Nuevo Personaje</a></li>
             <li><a href="Buscar.jsp" title="...">Buscar Personaje</a></li>
             <li><a href="Actualizar.jsp" title="...">Actualizar Personaje</a></li>
             <li><a href="Eliminar.jsp" title="...">Eliminar Personaje</a></li>
             <li><a href="Todos.jsp" title="...">Ver todos los personajes</a></li>
            </ul>
        </div>  
        <!-- fin menu -->
    </body>
</html>
<style>
    body{
         background-image: url("src\img\background.jpg");
         background-color: #cccccc;
    }
#menu ul {
    list-style-type: none;
    margin: 0px;
    padding: 0px;
    width: 200px;
    font-family: Arial, sans-serif;
    font-size: 11pt;
}
#menu ul li {
    background-color: #666;
}
#menu ul li a {
    color: #ccc;
    text-decoration: none;
    text-transform: uppercase;
    display: block;
    padding: 10px 10px 10px 20px;
}
#menu ul li a:hover {
    background: #000;
    border-left: 10px solid #333;
    color: #fff;
}
</style>