<%@ page contentType="text/html;charset=UTF-8" %>
<h3 class="titulo"><strong>${cuestionario?.nombre}</strong> </h3>
<h4 class="pregunta">${auxPregunta.pregunta}</h4>
<div class="row respuestas">
<g:each in="${auxPregunta.respuestas}" var="auxRespuesta">
<g:if test="${auxPregunta.tipo=="radio"}">
<div class="radio">
   <label>
   <input type="${auxPregunta.tipo}" name="${auxPregunta.id}" value="${auxRespuesta.id}">
   ${auxRespuesta.respuesta}
   </label>
</div>
</g:if>
<g:else>
   <div class="radio">
      <label>
      <input type="${auxPregunta.tipo}" name="${auxPregunta.id}" value="${auxRespuesta.id}">
      ${auxRespuesta.respuesta}
      </label>
   </div>
</g:else>
<g:if test="${auxPregunta?.imagenPath!=null}">
   <g:img dir="images" file="${auxPregunta?.imagenPath}" class="imagen"/>
</g:if>
                            
                           