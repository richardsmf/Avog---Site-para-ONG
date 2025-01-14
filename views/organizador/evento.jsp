<%@ page import="java.sql.*, java.time.*, java.text.*, java.util.List, java.util.Arrays, java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../db/conexao.jsp" %>
<% if(session.getAttribute("organizador_id") == null ){response.sendRedirect("../../db/restrito.jsp");}%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AVOG - Evento</title>
    <link rel="stylesheet" type="text/css" href="../../css/components/navbar.css">
    <link rel="stylesheet" type="text/css" href="../../css/components/footer.css">
    <link rel="stylesheet" type="text/css" href="../../css/components/checkbox.css">
    <link rel="stylesheet" href="../../css/usuario/eventoUser.css">
    <link rel="stylesheet" href="../../css/login.css">
    <style>
        .evento {
            display: none;
        }
    </style>
</head>

<body>
    <jsp:include page="components/navbar.jsp" />

    <div class="sub_nav">
        <div id="titulos">
            <h2 class="text_titulo">Eventos</h2>
            <div id="sub_titulos">
                <ul>
                    <li class="nav-item"><a id="ativos" href="#" onclick="selecao(event, 'eventoAtv')">Ativos</a></li>
                    <li class="nav-item"><a id="encerrados" href="#" onclick="selecao(event, 'eventoEnc')">Encerrados</a></li>
                    <li class="nav-item"><a id="criar" href="#" onclick="selecao(event, 'criarEvento')">Criar Eventos</a></li>
                </ul>
            </div>
        </div>
        <div id="search"></div>
    </div>
    <!-- Mensagem que retorna se o cadastro foi realizado com sucesso -->
    <div id="mensagemCard" class="eventoCard">
        <span id="mensagem"></span>
    </div>

    <!--Inclusão de componentes: eventos ativados, encerrados e criar evento -->
    <jsp:include page="components/eventoAtv.jsp" />
    <jsp:include page="components/eventoEnc.jsp" />
    <jsp:include page="components/criarEvento.jsp" />

    <script type="text/javascript" src="../../js/validacoes/organizador/evento.js"></script>
</body>

</html>
