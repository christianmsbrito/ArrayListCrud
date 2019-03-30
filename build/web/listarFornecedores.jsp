<%-- 
    Document   : pesquisarFornecedor
    Created on : 29/03/2019, 15:15:10
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
        <h1>Listar Fornecedor</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <table border="1" style="width: 100%">
            <tr>
                <td>#ID</td>
                <td>Nome</td>
                <td>Razão Social</td>
                <td>CNPJ</td>
                <td>Email</td>
                <td>Telefone</td>
                <td>Endereço</td>
                <td>Editar</td>
                <td>Excluir</td>
            </tr>
        </table>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
