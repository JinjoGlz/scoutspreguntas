<%--
   Created by IntelliJ IDEA.
   User: JUAN
   Date: 7/10/2015
   Time: 2:11 PM
   --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
   <head>
      <title>${cuestionario?.nombre}</title>
      <script>
         $(document).ready(function() {
             $('.carousel').carousel({
                 pause: true,
                 interval: false
             });
         });
      </script>
   </head>
   <body>
      <img src="img/background.png" id="bg">
      <div class="contenido">
      <img src="img/tabla.png" style="max-width:100%; max-height:100%;">
      <div id="tabla">
         <div id="hoja">
            <div class="">
               <g:form action="calificarCuestionario" method="post">
                  <input type="text" name="id" hidden="true" value="${cuestionario?.id}">
                  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                     <!-- Indicators -->
                     <ol class="carousel-indicators">
                        <g:each var="x" in="${(1..cuestionario.numeroPreguntas)}" status="i">
                           <li data-target="#carousel-example-generic" data-slide-to="${i}" ${i==0?'class="active"':''}></li>
                        </g:each>
                     </ol>
                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                        <g:set var="listPreguntas" value="${cuestionario.preguntas.findAll{!it.entrenamiento}}"/>
                        <g:each in="${cuestionario.preguntas.findAll{!it.entrenamiento}}" var="auxPregunta" status="i">
                           <div class="item ${i==0?'active':''}">
                              <g:render template="formPregunta" model="[auxPregunta:listPreguntas[i]]"/>
                           </div>
                        </g:each>
                        <div id="carousel">
                        </div>
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span> </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>  </a>
                     </div>
                  </div>
            </div>
         </div>
      </div>
      <div class="side">
      <a onclick="form.submit"> 
      <g:img dir="images" file="Botones/botonenviar.png" class="imagen"/>
      <label>Enviar resultado</label>
      </div>
      </g:form>
      <div style="width:300px; height:300px;">
      </div>
   </body>
</html>