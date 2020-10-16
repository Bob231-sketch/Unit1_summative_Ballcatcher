int LrectY = 350;
int RrectY = 350;

int ellX  = width / 2;
int ellY  = height / 2;

boolean moveRight = true;
boolean moveDown = true;

int speedSide = 3;
int speedVertical = 4;

int countR = 0;
int countL = 0;
 
PFont font;

void setup()
{
  size(700,700);
  background(0);
  font = loadFont ("AppleSymbols-48.vlw");
}

void draw()
{
  background(0);
  
  textFont (font);
  
  fill(250,0,0);
  ellipse (ellX,ellY,50,50);
  text ("Pong",300,40); 
  
  fill(0,0,255);
  rect(20,LrectY,30,100);
  text(countL,200,50);
  
  fill(255,0,0);
  rect(630,RrectY,30,100);
  text(countR,500,50);
 
  if(keyPressed == true && key =='w')
  {
    LrectY = LrectY - 6;
  }
  
  if(keyPressed == true&& key == 's')
  {
    LrectY = LrectY + 6;
  }
  
  if(keyPressed == true&& key == 'd')
  {
    RrectY = RrectY - 6;
  }
  
  if(keyPressed == true&& key == 'a')
  {
     RrectY = RrectY + 6;
  }
  
  if(moveRight == true)
  {
    ellX = ellX + speedSide;
  }
  else
  {
     ellX = ellX - speedSide;
  }
  
  if(moveDown == true)
   {
    ellY = ellY + speedVertical;
  }
  else
  {
     ellY = ellY - speedVertical;
  }
  
  if(ellY <= 10)
  {
    moveDown= true;
  }
  
  if(ellY >= 690)
  {
    moveDown= false;
  }
  
   if(ellX >= 690)
  {
    moveRight= false;
  }
  
  if(ellX <= 10)
  {
    moveRight= true;
  }
  
  if(ellX >= 690)
  {
    countL++;
    ellX = width / 2;
    ellY = height / 2;
  }
 
 if(ellX <= 10)
  {
    countR++;
    ellX = width / 2;
    ellY = height / 2;
  }
  
  if (ellX >= 615 && ellY > RrectY && ellY < (RrectY + 100))
  {
    moveRight = false;
  }
  
  if (ellX <= 75 && ellY > LrectY && ellY < (LrectY + 100))
  {
    moveRight = true;
  }

}
