<%-- 
    Document   : formularioFornecedor
    Created on : 29/03/2019, 15:14:32
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
        <h1>Formulario Fornecedor</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <form>
            Nome: <input type="text" name="nome"> <br>
            Razão Social: <input type="text" name="razaoSocial"><br>
            CNPJ: <input type="text" name="cnpj"><br>
            Email: <input type="text" name="email"><br>
            Telefone: <input type="text" name="telefone"><br>
            Endereço: <input type="text" name="endereco"><br>
            <input type="submit" name="enviar" value="Cadastrar">
        </form>


        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
