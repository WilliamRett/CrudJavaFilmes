<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>

    <title>Filmes - Cadastro</title>
    
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
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Filme</h2>
					
					<form:form modelAttribute="filmeModel" action="${contextPath}/filme/new" method="post">
						<spring:hasBindErrors name="filmeModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>

						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<form:input type="text" path="nome" name="nome" id="nome" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="nome" />
							</font><br/>
                        </div>
                        <div class="form-group">
							<label class="control-label" for="ano">Ano:</label>
							<form:input id="ano" path="ano" name="ano" value="" class="form-control" maxlength="4" size="4" />
							<font color="red">
								<form:errors path="ano" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="classificao">Classificação:</label>
							<form:input id="classificao" path="classificao" name="classificao" value="" class="form-control" maxlength="2" size="2" />
							<font color="red">
								<form:errors path="classificao" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="genero">Gênero:</label>
							<form:input type="text" id="genero" path="genero" name="genero" class="form-control" />
							<font color="red">
								<form:errors path="genero" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="diretor">Diretor:</label>
							<form:input type="text" id="diretor" path="diretor" name="diretor" class="form-control" />
							<font color="red">
								<form:errors path="diretor" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="sinopse">Sinopse:</label>
							<form:textarea id="sinopse" class="form-control" path="sinopse" name="sinopse" rows="4" cols="100"></form:textarea>
							<font color="red">
								<form:errors path="sinopse" />
							</font><br/>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/filme">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
                            
                        <br>
                        <br>
					</form:form>
					
					
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