
void selec_niveles () {
  
  textSize (80);
  fill (235, 183, 52);
  text ("Escoja el Nivel", (width/2)-(textWidth ("Escoja el Nivel")/2), height/5);
  
  fill(50, 15, 200);
  rect(width/10, height/3, 75, 75);
  textSize(50);
  fill(0);
  text(1, (width/10) + (2*textWidth ("1")/3), (height/3)+((4*textAscent() - textDescent()) / 3));

  
  fill(50, 15, 200);
  rect(2*width/10, height/3, 75, 75);
  fill(0);
  text(2, (2*width/10) + (2*textWidth ("2")/3), (height/3)+((4*textAscent() - textDescent()) / 3));

  
  fill(50, 15, 200);
  rect(3*width/10, height/3, 75, 75);
  fill(0);
  text(3, (3*width/10) + (2*textWidth ("3")/3), (height/3)+((4*textAscent() - textDescent()) / 3));
  
  
  
   if ((mouseX >= width/10) && (mouseX <= (width/10)+75) && (mouseY >= height/3) && (mouseY <= (width/3)+75) && (mouseButton==LEFT)) {
    sel_niveles = false;
    primer_nivel=true;
    delay(200);
   }
   
   if ((mouseX >= 2*width/10) && (mouseX <= (2*width/10)+75) && (mouseY >= height/3) && (mouseY <= (width/3)+75) && (mouseButton==LEFT)) {
    sel_niveles = false;
    segundo_nivel=true;
    delay(200);
   }
   
    if ((mouseX >= 3*width/10) && (mouseX <= (3*width/10)+75) && (mouseY >= height/3) && (mouseY <= (width/3)+75) && (mouseButton==LEFT)) {
    sel_niveles = false;
    tercer_nivel=true;
    delay(200);
   }
   
   if (keyPressed){
   if (key==DELETE && sel_niveles==true && inicio==true) {
    sel_niveles=false;
    inicio=false;
      }
   }  
}
