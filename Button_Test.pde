int cx, cy,dia;
Button b1,b2,b3,b4;
void setup(){
  size(200,200);  
  cx=85;cy=55;dia=35;
  
  //b = new Button(cx,cy,dia,dia,highlightcolor,basecolor);
  b1 = new Button("Button1",cx,cy,dia,dia,color(#63C131),color(#35402F));
  b2 = new Button("Button2",cx,cy+dia,dia,dia,color(#16DEF2),color(#35402F));
  b3 = new Button("Button3",cx,cy+dia*2,dia,dia,color(#6D2DFA),color(#35402F));
  b4 = new Button("Button4",cx,cy+dia*3,dia,dia,color(#FFA927),color(#35402F));
}

void draw(){
  background(#35402F);
  color(#000000);
  smooth();
  b1.drawButton();
  b2.drawButton();
  b3.drawButton();
  b4.drawButton();
}


void mousePressed(){
  //println(mouseX+","+mouseY);
  println(b1.updateButton());
  println(b2.updateButton());
  println(b3.updateButton());
  println(b4.updateButton());
}
