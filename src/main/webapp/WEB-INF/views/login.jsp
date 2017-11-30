<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html >
<head>
    <%@ page session="true"%>
    <%@ page import="com.mensubiqua.intravita.dao.*" %>
     <%@ page import="com.mensubiqua.intravita.model.*" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	<!--  reCaptcha -->
	<script src='https://www.google.com/recaptcha/api.js'></script>
    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="${url}/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="${url}/resources/css/form-elements.css">
    <link rel="stylesheet" href="${url}/resources/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Javascript -->
    <script src="${url}/resources/js/jquery-1.11.1.min.js"></script>
    <script src="${url}/resources/js/jquery.backstretch.min.js"></script>
    <script src="${url}/resources/js/scripts.js"></script>

    <!--[if lt IE 10]>
    <script src="${url}/resources/js/placeholder.js"></script>
    <![endif]-->
    
<title> Login | Intravita </title>

</head>

<body onload='document.loginForm.username.focus();'>

<div class="top-content">

    <div class="inner-bg">
        <div class="container">

            <div class="row">
                <div class="col-sm-5">

                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Iniciar sesión</h3>
                                <p><strong style="color: red !important;">
                                    <c:if test="${not empty mensaje2}">
                                        <div id="msglogin" class="msg">${mensaje2}</div>
                                    </c:if></strong>
                                </p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-key"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form name='loginForm' role="form" action="${url}/logear" method="post" class="login-form">
                                <div class="form-group">
                                    <label class="sr-only" for="form-username">Usuario</label>
                                    <input type="text" name="username" placeholder="Usuario" class="form-username form-control" id="form-username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-password">Contraseña</label>
                                    <input type="password" name="password" placeholder="Contraseña" class="form-password form-control" id="form-password">
                                </div>
                                <div class="form-group">
                                <a href="recuperar">¿Ha olvidado su contraseña?</a>
                                </div>
                                <div class="g-recaptcha" data-sitekey="6Lf8FTsUAAAAABXiSOoK3lV-9kIawlM0oe8eYV-e"></div>
                                <button id="form-login" type="submit" name="submit" value="submit" class="btn">Entrar</button>
                            </form>
                        </div>
                    </div>

                </div>

                <div class="col-sm-1 middle-border"></div>
                <div class="col-sm-1"></div>

                <div class="col-sm-5">

                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Registrarse</h3>
                                <p style="color: red;">
                                    <c:if test="${not empty mensaje}">
                                <div class="error">${mensaje}</div>
                                </c:if>
                                </p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" action="${url}/registro" method="post" class="registration-form">
                                <div class="form-group">
                                	<label class="sr-only" for="form-nickname">Usuario</label>
                                    <input type="text" name="nickname" value="${rnick}" placeholder="Usuario" class="form-first-name form-control" id="form-nickname"><br>
                                    <label class="sr-only" for="form-nombew">Nombre</label>
                                    <input type="text" name="nombre" value="${rnombre}" placeholder="Nombre" class="form-first-name form-control" id="form-first-name"><br>
                                    <label class="sr-only" for="form-apellido">Apellidos</label>
                                    <input type="text" name="apellido" value="${rapellido}" placeholder="Apellidos" class="form-last-name form-control" id="form-last-name"><br>
                                    <label class="sr-only" for="form-email">Email</label>
                                    <input type="text" name="email" value="${remail}" placeholder="Correo electrónico" class="form-email form-control" id="form-email"><br>
                                    <label class="sr-only" for="form-password">Contraseña</label>
                                    <input type="password" name="password" placeholder="Contraseña" class="form-email form-control" id="form-passwordd"><br>
                                    <label class="sr-only" for="form-password2">Repita contraseña</label>
                                    <input type="password" name="password2" placeholder="Contraseña" class="form-email form-control" id="form-password2">
                                    </div>
                                    <div class="g-recaptcha" data-sitekey="6Lf24zoUAAAAAKtUoQJb4sX2lGs2ggVNGYe4u1w7"></div>
                                <button id="registrar" type="submit" class="btn">Registrarse</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>

</div>

</body>

</html>
