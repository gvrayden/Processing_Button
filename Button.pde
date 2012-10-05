class Button{
  int x,y,w,h;
  color buttonBaseColor, buttonHColor, currentColor;
  boolean buttonState;
  String buttonName;
  Button(String text, int x, int y, int w, int h,color hc, color bc){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.buttonBaseColor = bc;
    this.buttonHColor = hc;
    this.currentColor = bc;
    this.buttonState = false;
    this.buttonName = text;
  }
void drawButton(){
  stroke(#ffffff);
  fill(currentColor);//#63C131
  ellipse(x, y, w, h);
  noStroke();
  fill(buttonBaseColor);
  smooth();
  ellipse(x, y, w-(w*0.45), h-(h*0.45));
  fill(#ffffff);
  textAlign(LEFT);
  text(buttonName,x+(w*0.55),y+(h*0.1));
}

  boolean updateButton() 
  {
    float disX =  x - mouseX;
    float disY =  y - mouseY;
    if(sqrt(sq(disX) + sq(disY)) < dia/2 ) 
    {
      if(currentColor == buttonBaseColor)
      {
        currentColor = buttonHColor;
        buttonState = true;
      }
      else
      {
        currentColor = buttonBaseColor;
        buttonState = false; 
      }
    } 
     return buttonState;
  }

}
