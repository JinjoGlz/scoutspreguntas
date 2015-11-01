<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:img dir="images" file="background.png" id="bg"/>

<div class="contenidoRes">
         <g:img dir="images" file="resultado.png" style="max-width:100%; max-height:100%; position: relative;"/>
          
         <div id="mensaje">
            <h1 >${titulo}</h1>
            <h2>${texto}.</h2>  
         </div>
      </div>

      <div id="sideCompartir">
         <a href="#" on> <img src="img/Botones/botonCompartir.png" class="botonEnviar img-circle hvr-grow"></a>
         <label>Comparte tu resultado</label>
      </div>
</body>
</html>