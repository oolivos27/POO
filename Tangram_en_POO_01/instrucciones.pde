void instruccion() {
   fill(216);
  rect(width/3, (height/2-200), width/3, height/2+150);
  
  textSize (80);
  fill (235, 183, 52);
  text ("Instrucciones", (width/2)-(textWidth ("Instrucciones")/2), height/6);

  fill (0);
  textSize(30);
  text("Juego:",(width/3)+20, (height/4)+10);
  textSize(20);
  text("-Seleccione la figura con el mouse.",(width/3)+20,(height/4)+50);
  text("-Rote la figura con la tecla ESPACIO.",(width/3)+20,(height/4)+90);
  text("-Refleje el paralelogramo con la tecla 'R'.",(width/3)+20,(height/4)+130);
  text("-Oprima la tecla 'Supr' para regresar a cada menú.",(width/3)+20,(height/4)+150, width/3, (height/2)+150);
  
  fill (0);
  textSize(30);
  text("Modo Creador:",(width/3)+20, (height/4)+250);
  textSize(20);
  text("-Seleccione las figuras en blanco.",(width/3)+20,(height/4)+290);
  text("-Haga la figura deseada.",(width/3)+20,(height/4)+330);
  text("-Para guardar su nivel oprima la tecla 'S'.",(width/3)+20,(height/4)+370);
  
  
 if (keyPressed){
   if (key==DELETE && instrucciones==true && inicio==true) {
    instrucciones=false;
    inicio=false;
  }
   }
   
}
