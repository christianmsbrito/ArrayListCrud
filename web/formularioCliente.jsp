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
<<<<<<< HEAD
        <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <h1>Formulário Cliente</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>
        
        <form>
            <div class="row col-8 ml-auto mr-auto">
            <span>Nome</span>
            <input class="col-12 form-control" type="text" name="nome" value="<%= cliente.getNome()%>">
            <span>CPF</span>
            <input class="col-12 form-control" type="text" name="cpf" value="<%= cliente.getCpf()%>">
            <span>RG</span>
            <input class="col-12 form-control" type="text" name="rg" value="<%= cliente.getRg()%>">
            <span>Email</span>
            <input class="col-12 form-control" type="text" name="email" value="<%= cliente.getEmail()%>">
            <span>Telefone</span>
            <input class="col-12 form-control" type="text" name="telefone" value="<%= cliente.getTelefone()%>">
            <span>Endereço</span>
            <input class="col-12 form-control" type="text" name="endereco" value="<%= cliente.getEndereco()%>">
            <%if(request.getParameter("id") == null){%>
                <input class=" mt-3 btn btn-outline-primary ml-auto mr-auto" type="submit" name="adicionar" value="Cadastrar">
            <%} else {%>
                <input type="submit" class="mt-3 btn btn-outline-primary ml-auto mr-auto" name="alterar" value="Alterar" id="alt">
            <%}%>    
            </div>
            
        </form>
=======
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
        <%if (request.getParameter("id") == null) {%>
        <input type="submit" name="adicionar" value="Cadastrar">
        <%} else {%>
        <input type="submit" name="alterar" value="Alterar" id="alt">
        <%}%>
        <input type="hidden" name="id" value="<%= id%>"/>
    </form>
>>>>>>> 62c352358d8323ba0eebf9fd545a7a4bb32fb6a0

    <%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
