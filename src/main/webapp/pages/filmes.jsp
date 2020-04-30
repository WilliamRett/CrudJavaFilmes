<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

    <title>Filmes - Listagem</title>
    
    <spring:url value="/resources/css" var="css" />
    <spring:url value="/resource/js" var="js" />
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath" />
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/filmes">Filmes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
				
				<h1>Filmes</h1>
				
				<p class="toolbar">
				
					<a class="create btn btn-default" href="${contextPath}/filme/new">Novo Filme</a>
					
					<c:if test="${not empty messages}">
						<h3 class="alert alert-warning">${messages}</h3>
					</c:if>
	
					<span class="alert"></span>
				</p>
				
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th data-field="nome">Nome</th>
							<th data-field="genero">Gênero</th>
							<th data-field="ano">Ano</th>
							<th data-field="classificao">Classificação</th>
							<th class="actions" width="220">Ações</th>
						</tr>
					</thead>
					<tbody>
					
						<c:forEach items="${filmes}" var="filme">
		
							<tr>
								<td>${filme.nome}</td>
								<td>${filme.genero}</td>
								<td>${filme.ano}</td>
								<td>${filme.classificao}</td>
								
								<td class="actions">
									
									<form:form action="${contextPath}/filme/delete/${filme.id}" method="delete">
									
										<a class="btn btn-success btn-xs" href="${contextPath}/filme/${filme.id}">Detalhes</a>
										<a class="btn btn-warning btn-xs" href="${contextPath}/filme/update/${filme.id}">Editar</a>
										<input type="submit" value="Excluir" class="btn btn-danger btn-xs">
									</form:form>
									
								</td>
							</tr>
						
						</c:forEach>
                    </tbody>
				</table>
            </div>
        </div>
		<hr>
    </div>

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>