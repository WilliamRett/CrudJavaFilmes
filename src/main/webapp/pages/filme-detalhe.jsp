<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Filmes - Detalhe</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/sresources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/filme">Filmes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Filme</h2>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<b>${filme.nome }</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="ano">Ano:</label>
							<label class="label label-default">${filme.ano }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="classificao">Classificação:</label>
							<label class="label label-default">${filme.classificao }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="diretor">Diretor:</label>
							<label class="label label-default">${filme.diretor }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="genero">Gênero:</label>
							<label class="label label-default">${filme.genero }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="sinopse">Sinopse:</label>
							<textarea id="sinopse" class="form-control" name="sinopse" rows="4" cols="100">${filme.sinopse}</textarea>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/filme">Voltar</a>
                            
                        <br>
                        <br>
					
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>