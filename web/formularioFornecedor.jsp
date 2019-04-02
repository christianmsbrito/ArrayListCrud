<%-- 
    Document   : formularioFornecedor
    Created on : 29/03/2019, 15:14:32
    Author     : vsreis
--%>
<%@page import="models.DataBase"%>
<%@page import="models.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Fornecedores fornecedor = new Fornecedores();
    int id = 0;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        fornecedor = DataBase.getFornecedorById(id);
    }
%>

<%
    if (request.getParameter("adicionar") != null) {
        Fornecedores f = new Fornecedores();

        f.setNome(request.getParameter("nome"));
        f.setRazaoSocial(request.getParameter("razaoSocial"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereco(request.getParameter("endereco"));
        f.Create(f);

        response.sendRedirect(request.getRequestURI());
    }
%>

<%
    if (request.getParameter("alterar") != null) {
        fornecedor.setNome(request.getParameter("nome"));
        fornecedor.setRazaoSocial(request.getParameter("razaoSocial"));
        fornecedor.setCnpj(request.getParameter("cnpj"));
        fornecedor.setEmail(request.getParameter("email"));
        fornecedor.setTelefone(request.getParameter("telefone"));
        fornecedor.setEndereco(request.getParameter("endereco"));
        fornecedor.Update(fornecedor, id);
        response.sendRedirect("listarFornecedores.jsp");
    }
%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<body>
    <h1>Formulario Fornecedor</h1>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
    <br>

    <form><div class="row col-8 ml-auto mr-auto">
            <span>Nome</span>
            <input class="col-12 form-control" type="text" name="nome" value="<%= fornecedor.getNome()%>" required>
            <span>Razão Social</span>
            <input class="col-12 form-control" type="text" name="razaoSocial" value="<%= fornecedor.getRazaoSocial()%>" required>
            <span>CNPJ</span>
            <input class="col-12 form-control" type="text" name="cnpj" value="<%= fornecedor.getCnpj()%>" required>
            <span>Email</span>
            <input class="col-12 form-control" type="email" name="email" value="<%= fornecedor.getEmail()%>" required>
            <span>Telefone</span>
            <input class="col-12 form-control" type="text" name="telefone" value="<%= fornecedor.getTelefone()%>" required>
            <span>Endereço</span>
            <input class="col-12 form-control" type="text" name="endereco" value="<%= fornecedor.getEndereco()%>" required>
            <%if (request.getParameter("id") == null) {%>
            <input class=" mt-3 btn btn-outline-primary ml-auto mr-auto" type="submit" name="adicionar" value="Cadastrar">
            <%} else {%>
            <input type="submit" class="mt-3 btn btn-outline-primary ml-auto mr-auto" name="alterar" value="Alterar" id="alt">
            <%}%>            
            <input type="hidden" name="id" value="<%= id%>"/>
        </div>      
    </form>

    <%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
