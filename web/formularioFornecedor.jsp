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
    
    if (request.getParameter("id") != null ) {
        id = Integer.parseInt(request.getParameter("id"));
        fornecedor = DataBase.getFornecedorById(id);
    }
%>

<%
    if (request.getParameter("adicionar") != null) {
        fornecedor.setNome(request.getParameter("nome"));
        fornecedor.setRazaoSocial(request.getParameter("razaoSocial"));
        fornecedor.setCnpj(request.getParameter("cnpj"));
        fornecedor.setEmail(request.getParameter("email"));
        fornecedor.setTelefone(request.getParameter("telefone"));
        fornecedor.setEndereco(request.getParameter("endereco"));
        fornecedor.Create(fornecedor);

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
        <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <h1>Formulario Fornecedor</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <form>
            Nome: <input type="text" name="nome" value="<%= fornecedor.getNome() %>"> <br>
            Razão Social: <input type="text" name="razaoSocial" value="<%= fornecedor.getRazaoSocial()%>"><br>
            CNPJ: <input type="text" name="cnpj" value="<%= fornecedor.getCnpj()%>"><br>
            Email: <input type="text" name="email" value="<%= fornecedor.getEmail()%>"><br>
            Telefone: <input type="text" name="telefone" value="<%= fornecedor.getTelefone()%>"><br>
            Endereço: <input type="text" name="endereco" value="<%= fornecedor.getEndereco()%>"><br>
            <%if(request.getParameter("id") == null){%>
            <input type="submit" name="adicionar" value="Cadastrar">
            <%} else {%>
            <input type="submit" name="alterar" value="Alterar">
            <%}%>           
        </form>


        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
