<%--
   Created by IntelliJ IDEA.
   User: JUAN
   Date: 7/9/2015
   Time: 2:05 PM
   --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
   <head>
      <meta charset="utf-8">
      <title>
         Cuestionarios &raquo; 
         <g:layoutTitle/>
      </title>
      <g:external dir="js" file="jquery.js"/>
      <g:external dir="js" file="npm.js"/>
      <g:external dir="js" file="bootstrap.js"/>
      <g:external dir="css" file="bootstrap.min.css"/>
      <g:external dir="css" file="estilo.css"/>
      <g:external dir="css" file="modern-business.css"/>
      <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">
      <g:layoutHead/>
      <r:layoutResources/>
   </head>
   <body>
      <facebook:initJS appId="1077262938956087" />
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
         <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
               <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button> -->
               <g:link class="navbar-brand" action="index">
                  <g:link action="index">
                     <g:img dir="images" file="Botones/botoninicio.png" class="boton img-circle"/>
                  </g:link>
                  <g:link action="index">
                     <g:img dir="images" file="Botones/botoncuestionarios.png" class="boton img-circle"/>
                  </g:link>
                  <div class="row" style="margin-top: 4%;">
                     <label  style="padding: 0 11%;">Inicio</label>
                     <label>Cuestionarios</label>
                  </div>
               </g:link>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav navbar-right">
                  <li>
                     <facebook:picture facebookId="${usuario.uid}" width="50"/>
                  </li>
                  <li class="">                        
                     <label style="color:#fff;"><strong>${usuario.fullName}</strong></label>
                  </li>
               </ul>
            </div>
            <!-- /.navbar-collapse -->
         </div>
         <!-- /.container -->
      </nav>
      <g:layoutBody />
   </body>
</html>