<%-- 
    Document   : pesquisarCliente
    Created on : 29/03/2019, 15:14:59
    Author     : vsreis
--%>

<%@page import="models.DataBase"%>
<%@page import="models.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<h1>Listar Cliente</h1>
<%@include file="WEB-INF/jspf/menu.jspf" %>
<br>
<div class="row col-10 ml-auto mr-auto text-left">
    <div class="col-2">Nome</div>
    <div class="col-2">CPF</div>
    <div class="col-2">RG</div>
    <div class="col-2">Email</div>
    <div class="col-2">Telefone</div>
    <div class="col-2">Endereço</div>
</div>
<% for (Clientes c : DataBase.getClientes()) {
        int id = DataBase.getClientes().indexOf(c);
%>
<div class="row col-10 ml-auto mr-auto mt-1 text-left">
    <div class="col-1 text-truncate"><%=c.getNome()%></div>
    <div class="col-2 text-truncate"><%=c.getCpf()%></div>
    <div class="col-2 text-truncate"><%=c.getRg()%></div>
    <div class="col-2 text-truncate"><%=c.getEmail()%></div>
    <div class="col-2 text-truncate"><%=c.getTelefone()%></div>
    <div class="col-2 text-truncate"><%=c.getEndereco()%></div>
    <span class="ml-2">
        <a href="formularioCliente.jsp?id=<%=id%>">
            <i class="fas fa-edit"></i>
        </a>
    </span>
    <span class="ml-2">
        <a href="listarClientes.jsp?action=remove&id=<%=id%>">
            <i class="fas fa-trash"></i>
        </a>
    </span>
</div>
<%}%>
<%
    if (request.getParameter("action") != null && DataBase.getClientes().size() > 0) {
        String action = request.getParameter("action");
        switch (action) {
            case "remove":
                Clientes cliente = DataBase.getClienteById(Integer.parseInt(request.getParameter("id")));
                cliente.Delete();
                response.sendRedirect(request.getRequestURI());
        }
    }
%>

<%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
