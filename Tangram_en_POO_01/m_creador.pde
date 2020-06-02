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
    
   
  
if (keyPressed){
 if (key == 's' || key == 'S'){
  save ("niveles/nuevonivel.png");
  }
if (key==DELETE && creador==true && inicio==true) {
    creador=false;
    inicio=false;
  }
 }
}
