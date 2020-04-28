<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Produtos - Editar</title>
    
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
                        <a href="${contextPath}/produto">Produtos</a>
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
					
					<h2>Produto</h2>
					
					<form action="${contextPath}/produto/update" method="post">
					
						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${produto.id}" />
                       
                        </div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<input type="text" name="nome" id="nome" value="${produto.nome}" class="form-control" maxlength="50" size="50" />
                        </div>
                        <div class="form-group">
							<label class="control-label" for="nome">SKU:</label>
							<input type="text" name="sku" id="sku" value="${produto.sku}" class="form-control" maxlength="50" size="50" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Descrição:</label>
							<textarea id="descricao" class="form-control" name="descricao" rows="4" cols="100">${produto.descricao}</textarea>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<input type="text" name="preco" id="preco" value="${produto.preco}" class="form-control" maxlength="14" size="15" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Características:</label>
							<textarea id="mensagem" class="form-control" name="caracteristicas" rows="4" cols="100">${produto.caracteristicas}</textarea>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/produto">Cancelar</a>
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