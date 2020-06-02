PImage nivel1, nivel2, nivel3;
boolean inicio =false, sel_niveles = false, creador = false, instrucciones =false, salir = false, primer_nivel = false, segundo_nivel= false, tercer_nivel= false, ganador=false;
int d= 150;
float contador1 =0;
color blanco = color (255);

//Figuras con color
Cuadrado cuad;
Paralelogramo paral;
Triangulo triang1, triang2, triang3, triang4, triang5;

//Figuras modo creador
Cuadrado cuad_c;
Paralelogramo paral_c;
Triangulo triang1_c, triang2_c, triang3_c, triang4_c, triang5_c;

void setup () {
 size (1400,700);
 nivel1 = loadImage ("nivel1.png");
 nivel2 = loadImage ("nivel2.png");
 nivel3 = loadImage ("nivel3.png");
 
  cuad    = new Cuadrado (326,201,PI/4,(d*sqrt(2))/4,color(110, 44, 0),1); //Cuadrado café
 paral   = new Paralelogramo (212,315,0,d/4,color(113, 125, 126),1); //Paralelogramo gris
 triang1 = new Triangulo(250,100,0,d,color(93,241,42),1); //Triangulo Verde
 triang2 = new Triangulo(150,201,-PI/2,d,color(245,8,0),1); //Triangulo Rojo
 triang3 = new Triangulo(352,302,-PI/4,d/sqrt(2),color(152, 50, 138),1); //Triangulo Morado
 triang4 = new Triangulo(376,126,PI/2,d/2,color(50, 103, 152),1); //Triangulo Azul
 triang5 = new Triangulo(250,252,PI,d/2,color(238, 241, 42),1); //Triangulo Amarillo
 
 cuad_c    = new Cuadrado (326,201,PI/4,(d*sqrt(2))/4,color(255,255,255),1); //Cuadrado café
 paral_c   = new Paralelogramo (212,315,0,d/4,color(255,255,254),1); //Paralelogramo gris
 triang1_c = new Triangulo(250,100,0,d,color(255,254,255),1); //Triangulo Verde
 triang2_c = new Triangulo(150,201,-PI/2,d,color(254,255,255),1); //Triangulo Rojo
 triang3_c = new Triangulo(352,302,-PI/4,d/sqrt(2),color(255,254,254),1); //Triangulo Morado
 triang4_c = new Triangulo(376,126,PI/2,d/2,color(254,254,255),1); //Triangulo Azul
 triang5_c = new Triangulo(250,252,PI,d/2,color(254,255,254),1); //Triangulo Amarillo
}

void draw () {
   background (54,54,54);

//menu();
if (inicio==false) {
    menu();
  }
if (sel_niveles==true) {
    selec_niveles();
  }

if (instrucciones==true) {
    instruccion();
  }
  
if (creador==true) {
    m_creador();
  
  }
if (primer_nivel==true||segundo_nivel==true||tercer_nivel==true) {
  
  jugar();

}
if (salir==true) {
   exit();
  }
}

void manipulacion () {
  
triang1.dibujar();
 triang2.dibujar();
 triang3.dibujar();
 triang4.dibujar();
 triang5.dibujar();
 cuad.dibujar();
 paral.dibujar ();
 
 triang1.seleccion();
 triang2.seleccion();
 triang3.seleccion();
 triang4.seleccion();
 triang5.seleccion();
 cuad.seleccion();
 paral.seleccion();
}

/*void reset () {

}*/

void fin() {
  if ((mouseX > width/2+195) && (mouseX <width/2+235) && (mouseY > height/2-250) && (mouseY < height/2-210) && (mousePressed)) {
    salir=true;
  }
}
