// En este examen utilizamos todas las cosa que aprendimos en clase pues como miramos utilizamos FUNCIONES,MOVIMOS OBJETOS Y UTILIZAMOS CONCICIONALES.
class Mov{
  float X,Y;
  float diameter;
  float speed;
  int direction=5;
  Mov(float xpos,float ypos, float dia,float sp){// en todo esto usamos funciones que en la parte de abajo las llamamos 
   // empese a construir mi programa para que entienda la compu que necesito que me compile
    X = xpos;
    Y = ypos;
    diameter=dia;
    speed=sp;
  }
  void move(){
    X+=(speed*direction);
    if((X>(width - diameter/2)) || (X< diameter/2)){// utilize condicionales para que mi figura semoviera segun la instrucion 
    direction*=-1;
  }
}
void display(){
  rect(X,Y,diameter,diameter);
  ellipse(X,Y,diameter,diameter);
   line(X,Y,diameter,diameter);
}
}
Mov sp1,sp2,sp3;
void setup(){
  size(1000,1000);
background(random(255),random(255),random(255)); //saca varios colores
sp1= new Mov(80,250,60,0.10);
sp2= new Mov(100,200,40,2.0);
sp3= new Mov(0,0,8,1); 
}
 int linea=10;
  void draw(){
    size(1000,1000); 
    fill(255,122,100);
    line(0,0,width,height);
    point(50,80);
    point(100,300);
    rect(0,0,width,height);
    ellipse(0,0,width,height);
    line(0,0,width,height);
    linea=linea+10;
     fill(random(255),random(255),random(255));
    sp1.move();
    sp2.move();
    sp3.move();
    sp1.display();
    sp2.display();
    sp3.display();//a qui e donde hago que s muevan todos los objetos que dibujamos 
    
}
