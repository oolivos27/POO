PImage nivel1, nivel2, nivel3; 
PImage niveles[] = new PImage[70];

boolean inicio =false, sel_niveles = false, creador = false, instrucciones =false, salir = false, primer_nivel = false, segundo_nivel= false, tercer_nivel= false, ganador=false, jugar=false;
int d= 150, i=3, n=3;
float contador1 =0;
color blanco = color (255);
int nivel;
int[] posicionesn = new int[110];
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
 nivel1 = loadImage ("nivel_1.png"); 
 nivel2 = loadImage ("nivel_2.png");
 nivel3 = loadImage ("nivel_3.png");
 niveles[0]=nivel1;
 niveles[1]=nivel2;
 niveles[2]=nivel3;
 
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

if (sel_niveles==true) {
    selec_niveles();

  }
  
if (inicio==false) {
    menu();
  }


if (instrucciones==true) {
    instruccion();
  }
  
if (creador==true) {
    m_creador();
  
  }
if (jugar==true) {
  //jugar ();
  jugar(nivel);

}
if (salir==true) {
   exit();
  }
  
}
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
   creador=false;
   }
 
 if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=height/2 && mouseY<= (height/2)+50 && mousePressed){
   instrucciones=true;
   inicio=true;
   }
 
  if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=(height/2)+80 && mouseY<= (height/2)+130 && mousePressed){
   sel_niveles=false;
    creador=true;
   inicio=true;
   }
 
 if ((mouseX >= (width/2)-110) && (mouseX <=(width/2)+110) && (mouseY >= (height/2)+160) && (mouseY <= height/2+210) && (mousePressed)) {
    salir=true;
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

void selec_niveles () {
  
  textSize (80);
  fill (235, 183, 52);
  text ("Escoja el Nivel", (width/2)-(textWidth ("Escoja el Nivel")/2), height/5);
  
  int w=0;
  int by=height/3;
  for (int n=0; n<i; n++) {
    fill(250);
    
    if (w==8) {        
      w=w-8;        
      by=by+120;
    }
    fill(50, 15, 200);
    rect((w+1)*width/10, by, 75, 75, 50);
    textSize(50);
    fill(0);
    text((n+1), ((w+1)*width/10)+ (textWidth (char(n+1))/2),by+((4*textAscent() - textDescent()) / 3));      
    posicionesn[n] = (n+1)*120;
   
    if (mouseX >= (w+1)*width/10 && mouseX <= ((w+1)*width/10)+75 && mouseY >= by && mouseY <= by + 75 && mousePressed) {
      
      jugar = true;
      sel_niveles = false;
      nivel = n;
    }
    w=w+1;
  }
   
   if (keyPressed){
   if (key==DELETE && sel_niveles==true && inicio==true) {
    sel_niveles=false;
    inicio=false;
      }
   }  
}

  void jugar(int nivel_selec) {
  if (nivel_selec == 0) {
    image(niveles[0], 2*width/5, height/10);
    manipulacion ();
  } else if (nivel_selec == 1) {
    image(niveles[1], 2*width/5, height/10);
    manipulacion ();
  } else if (nivel_selec == 2) {
    image(niveles[2], 2*width/5, height/10);
    manipulacion ();
  }
  
    else {
    image(niveles[nivel_selec],0, 0);
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
   if (key==DELETE && sel_niveles==false && jugar==true) {
    sel_niveles=true;
    jugar=false;
    delay (100);
   }
 }
}

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
    
if (keyPressed) {

  if (key == 's' || key == 'S'){
  
  i=i+1;
  save ("/data/nivel_"+ i + ".png");
  niveles[i-1] = loadImage("/data/nivel_"+i+".png");
  }
  
if (key==DELETE && creador==true && inicio==true) {
    creador=false;
    inicio=false;
   
}
  }
 }

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

void cuentapixeles(){
  //recibir los pixeles del canvas
  loadPixels();
  // reiniciar contador de blancos
  contador1=0;
  // for que revise cada pixel del canvas
  for(int i=0;i<width*height;i++){
    //extraer los rgb de cada pixel
    float r= red(pixels[i]), g= green(pixels[i]), b= blue(pixels[i]);
    // comparar cada valor con los de blanco, y si es blanco el contador aumenta.
    if(r>250 && g>=250 && b>=250){
      contador1++;
    }
  }
  if (contador1 <= 30000) {
    ganador=true;
  } else{
  ganador=false;
  }
}

void fin() {
  if ((mouseX > width/2+195) && (mouseX <width/2+235) && (mouseY > height/2-250) && (mouseY < height/2-210) && (mousePressed)) {
    salir=true;
  }
}
