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
        <a href="excluir.jsp?id=<%=id%>">
            <i class="fas fa-trash"></i>
        </a>
    </span>
</div>
<%}%>
<%
    if (request.getParameter("action") != null && DataBase.getFornecedores().size() > 0) {
        String action = request.getParameter("action");
        switch (action) {
            case "remove":
                Clientes cliente = DataBase.getClienteById(Integer.parseInt(request.getParameter("id")));
                cliente.Delete();
                response.sendRedirect(request.getRequestURI());
        }
    }
%>

<table border="1" style="width: 100%">
    <tr>
        <td>#ID</td>
        <td>Nome</td>
        <td>CPF</td>
        <td>RG</td>
        <td>Email</td>
        <td>Telefone</td>
        <td>Endereço</td>
        <td>Editar</td>
        <td>Excluir</td>
    </tr>
    <% for (Clientes c : DataBase.getClientes()) {
                    int id = DataBase.getClientes().indexOf(c);%>
    <tr>
        <td><%=id%></td>
        <td><%=c.getNome()%></td>
        <td><%=c.getCpf()%></td>
        <td><%=c.getRg()%></td>
        <td><%=c.getEmail()%></td>
        <td><%=c.getTelefone()%></td>
        <td><%=c.getEndereco()%></td>
        <td><a href="formularioCliente.jsp?id=<%=id%>">Alterar</a></td>
        <td><a href="excluir.jsp?id=<%=id%>">Remover</a></td>
    </tr>
    <%}%>
</table>

>>>>>>> 62c352358d8323ba0eebf9fd545a7a4bb32fb6a0
<%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
