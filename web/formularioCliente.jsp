<%-- 
    Document   : formularioCliente
    Created on : 29/03/2019, 15:14:47
    Author     : vsreis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Formulário Cliente</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <form>
            Nome: <input type="text" name="nome">
            CPF: <input type="text" name="cpf">
            Email: <input type="text" name="email">
            Telefone: <input type="text" name="telefone">
            Endereço: <input type="text" name="endereco">
            <input type="submit" name="enviar" value="Cadastrar">
        </form>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
