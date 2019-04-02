<%-- 
    Document   : formularioCliente
    Created on : 29/03/2019, 15:14:47
    Author     : vsreis
--%>

<%@page import="models.DataBase"%>
<%@page import="models.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>

<%
    Clientes cliente = new Clientes();
    int id = 0;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        cliente = DataBase.getClienteById(id);
    }
%>

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

<%
    if (request.getParameter("alterar") != null) {
        cliente.setNome(request.getParameter("nome"));
        cliente.setCpf(request.getParameter("cpf"));
        cliente.setRg(request.getParameter("rg"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setTelefone(request.getParameter("telefone"));
        cliente.setEndereco(request.getParameter("endereco"));
        cliente.Update(cliente, id);
    }
%>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <h1>Formulário Cliente</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <form>
            Nome: <input type="text" name="nome" value="<%= cliente.getNome()%>">
            CPF: <input type="text" name="cpf" value="<%= cliente.getCpf()%>">
            RG: <input type="text" name="rg" value="<%= cliente.getRg()%>">
            Email: <input type="text" name="email" value="<%= cliente.getEmail()%>">
            Telefone: <input type="text" name="telefone" value="<%= cliente.getTelefone()%>">
            Endereço: <input type="text" name="endereco" value="<%= cliente.getEndereco()%>">
            <%if(request.getParameter("id") == null){%>
                <input type="submit" name="adicionar" value="Cadastrar">
            <%} else {%>
                <input type="submit" name="alterar" value="Alterar" id="alt">
            <%}%>
        </form>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
