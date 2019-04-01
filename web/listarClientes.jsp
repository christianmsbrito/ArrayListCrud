<%-- 
    Document   : pesquisarCliente
    Created on : 29/03/2019, 15:14:59
    Author     : vsreis
--%>

<%@page import="models.DataBase"%>
<%@page import="models.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Listar Cliente</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

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

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
