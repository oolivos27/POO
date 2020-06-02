void menu () {

   //Título
   fill (235, 183, 52);
   textSize (100);
   text ("SUPER TANGRAM", (width/2)- (textWidth ("SUPER TANGRAM")/2), height/4);
   
   //Botones
   fill(50, 15, 200); 
   rect((width/2)-110, height/2,220,50,10);
   fill (216);
   textSize (30);
   text("Instrucciones", (width /2) - (textWidth("Instrucciones") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2));
   
   fill(50, 15, 200);
   rect((width/2)-110, height/2 - 80, 220, 50, 10);
   fill(216);
   text("Niveles", (width /2) - (textWidth("Niveles") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2) - 80);
   
   fill(50, 15, 200);
   rect((width/2)-110, height/2 + 80, 220, 50, 10);
   fill(216);
   text("Modo Creador", (width /2) - (textWidth("Modo Creador") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2) + 80);
   
   fill(50, 15, 200);
   rect((width/2)-110, height/2 + 160, 220, 50, 10);
   fill(216);
   text("Salir", (width /2) - (textWidth("Salir") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2) + 160);
 
 if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=(height/2)-80 && mouseY<= (height/2)-30 && mousePressed){
   sel_niveles=true;
   inicio=true;
   }
 
 if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=height/2 && mouseY<= (height/2)+50 && mousePressed){
   instrucciones=true;
   inicio=true;
   }
 
  if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=(height/2)+80 && mouseY<= (height/2)+130 && mousePressed){
   creador=true;
   inicio=true;
   }
 
 if ((mouseX >= (width/2)-110) && (mouseX <=(width/2)+110) && (mouseY >= (height/2)+160) && (mouseY <= height/2+210) && (mousePressed)) {
    salir=true;
 }
}
