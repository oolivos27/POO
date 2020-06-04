int n=3;

void m_creador () {
 
 triang1_c.dibujar();
 triang2_c.dibujar();
 triang3_c.dibujar();
 triang4_c.dibujar();
 triang5_c.dibujar();
 cuad_c.dibujar();
 paral_c.dibujar ();
 
 triang1_c.seleccion();
 triang2_c.seleccion();
 triang3_c.seleccion();
 triang4_c.seleccion();
 triang5_c.seleccion();
 cuad_c.seleccion();
 paral_c.seleccion();
    
guardar_nivel ();
  
if (keyPressed){
 
if (key==DELETE && creador==true && inicio==true) {
    creador=false;
    inicio=false;
    guardar =true;
  }
 }
}

void guardar_nivel () {

if (keyPressed) {
if ((key == 's' || key == 'S') && creador == true){
  guardar=true;
  i=i+1;
  
  if (guardar==true){
    save ("niveles/nuevonivel_"+ i + ".png");
   }
  }
 }
}

void cuadro_nivel () {
 
guardar_nivel ();
if (guardar==true && sel_niveles ==true) {
  n=n+1;
  fill(50, 15, 200);
  rect(n*width/10, height/3, 75, 75);
  fill(0);
  text(n, (n*width/10) + (2*textWidth (char(n))/3), (height/3)+((4*textAscent() - textDescent()) / 3));
  delay (200);
}
guardar=false;
}
