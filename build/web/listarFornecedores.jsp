ooool<%-- 
    Document   : pesquisarFornecedor
    Created on : 29/03/2019, 15:15:10
    Author     : vsreis
--%>

<%@page import="models.Fornecedores"%>
<%@page import="models.DataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jspf" %>
<h1>Listar Fornecedor</h1>
<%@include file="WEB-INF/jspf/menu.jspf" %>
<br>
<div class="row col-10 ml-auto mr-auto text-left">
    <div class="col-2">Nome</div>
    <div class="col-2">Razão Social</div>
    <div class="col-2">CNPJ</div>
    <div class="col-2">Email</div>
    <div class="col-2">Telefone</div>
    <div class="col-2">Endereço</div>
</div>
<% for (Fornecedores fornecedor : DataBase.getFornecedores()) {
        int id = DataBase.getFornecedores().indexOf(fornecedor);%>
<div class="row col-10 ml-auto mr-auto mt-1 text-left">
    <div class="col-1 text-truncate"><%=fornecedor.getNome()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getRazaoSocial()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getCnpj()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getEmail()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getTelefone()%></div>
    <div class="col-2 text-truncate"><%=fornecedor.getEndereco()%></div>
    <span class="ml-2">
        <a href="formularioFornecedor.jsp?id=<%=id%>">
            <i class="fas fa-edit"></i>
        </a>
    </span>
    <span class="ml-2">
        <a href="listarFornecedores.jsp?action=remove&id=<%=id%>">
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
                Fornecedores fornecedor = DataBase.getFornecedorById(Integer.parseInt(request.getParameter("id")));
                fornecedor.Delete();
                response.sendRedirect(request.getRequestURI());
        }
    }
%>

<%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
