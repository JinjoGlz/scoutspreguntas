<?php
// check if fields passed are empty
if(empty($_POST['name'])  		||
   empty($_POST['phone']) 		||
   empty($_POST['email']) 		||
   empty($_POST['message'])	||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
	echo "No arguments Provided!";
	return false;
   }
	
$name = $_POST['name'];
$phone = $_POST['phone'];
$email_address = $_POST['email'];
$message = $_POST['message'];
	
// create email body and send it	
$to = 'omarcorres@endoax.com.mx'; // PUT YOUR EMAIL ADDRESS HERE
$email_subject = "Se ha contactado desde endoax.com.mx la persona:  $name"; // EDIT THE EMAIL SUBJECT LINE HERE
$email_body = "Se ha recibido un mensaje desde su pagina web.\n\n"."A continuacion estan los detalles:\n\nNombre: $name\n\nTelefono: $phone\n\nCorreo: $email_address\n\nMensaje:\n$message";
$headers = "From: noreply@endoax.com.mx\n";
$headers .= "Reply-To: $email_address";	
mail($to,$email_subject,$email_body,$headers);
return true;			
?>