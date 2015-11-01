<html>
<head>
	<title></title>
</head>
<body>
	  <g:img dir="images" file="background.png" id="bg"/>
	  <div class="contenedor">
         <div class="row">
            <div class="col-lg-12" style="padding-left: 10%;">
               <h2>Cuestionarios Disponibles</h2>
            </div>
         </div>   

         <g:each in="${cuestionarios?}" var="cuestionarioAux">  
         <div class="contenidoDis"> 
            <img src="img/equipo/preview.jpg" alt="" class="preview">

            <div class="botonesCuestionario">
            <g:link  action="tomarCuestionario" class="btn btn-primary" id="${cuestionarioAux.id}" >Contestar</g:link>
               <g:link  action="tomarEntrenamiento" class="btn btn-success" id="${cuestionarioAux.id}">Entrenar</g:link>
               <g:link  action="tablaPosiciones" class="btn btn-info" id="${cuestionarioAux.id}">Posiciones</g:link>
             </div>
            <div id="lista">
                <h2>${cuestionarioAux.nombre}</h2>
    			<h4>${cuestionarioAux.descripcion}</h4>   
            </div>            
         </div> 
         </g:each>


      </div> 


</body>
</html>