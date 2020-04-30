<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Filmes - Editar</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/resources/js" var="js"/>
    
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

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Filme</h2>
					
					<form action="${contextPath}/filme/update" method="post">
					
						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${filme.id}" />
                       
                        </div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<input type="text" name="nome" id="nome" value="${filme.nome}" class="form-control" maxlength="50" size="50" />
                        </div>
                        <div class="form-group">
							<label class="control-label" for="ano">Ano:</label>
							<input type="text" name="ano" id="ano" value="${filme.ano}" class="form-control" maxlength="4" size="4" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="classificao">Classifição:</label>
							<input type="text" name="classificao" id="classificao" value="${filme.classificao}" class="form-control" maxlength="2" size="2" />
						</div>

						<div class="form-group">
							<label class="control-label" for="diretor">Diretor:</label>
							<input type="text" name="diretor" id="diretor" value="${filme.diretor}" class="form-control" maxlength="14" size="15" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="genero">Gênero:</label>
							<input type="text" name="genero" id="genero" value="${filme.genero}" class="form-control" maxlength="14" size="15" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="sinopse">Sinopse:</label>
							<textarea id="sinopse" class="form-control" name="sinopse" rows="4" cols="100">${filme.sinopse}</textarea>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/filme">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
                            
                        <br>
                        <br>
					</form>
					
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