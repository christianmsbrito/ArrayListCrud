<%-- 
    Document   : formularioCliente
    Created on : 29/03/2019, 15:14:47
    Author     : vsreis
--%>

<%@page import="models.DataBase"%>
<%@page import="models.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("adicionar") != null) {
        Clientes c = new Clientes();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        c.Create(c);

        response.sendRedirect(request.getRequestURI());
    }
%>

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
            RG: <input type="text" name="rg">
            Email: <input type="text" name="email">
            Telefone: <input type="text" name="telefone">
            Endereço: <input type="text" name="endereco">
            <input type="submit" name="adicionar" value="Cadastrar">
        </form>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
