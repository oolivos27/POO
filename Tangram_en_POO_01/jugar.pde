void jugar () {
  if (primer_nivel==true){
  image (nivel1,2*width/5, height/10);
   manipulacion ();
}
  else if (segundo_nivel==true) {
    image (nivel2,2*width/5, height/10);
     manipulacion ();
  } 
  else if (tercer_nivel==true){
      image (nivel3,2*width/5, height/10);
       manipulacion ();
  }
  
 
  cuentapixeles();
 print(contador1);
 print("       ");
if (ganador == true){
background (random (0,255), random (0,255), random(0,255));
  fill (255);
  textSize (100);
  text("!Ganaste!", random (0,700), random (100,600));
  delay (200);
}
  if (keyPressed){
   if (key==DELETE && sel_niveles==false && primer_nivel==true || segundo_nivel==true || tercer_nivel==true) {
    sel_niveles=true;
    primer_nivel=false;
    segundo_nivel=false;
    tercer_nivel=false;
    delay (100);
   }
 }

}
