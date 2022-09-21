int startX = 0 + (int)(Math.random()*100);
int startY= 150;
int endX = 0 + (int)(Math.random()*10);
int endY = 150;
PImage img;

void setup()
{
  size(500,500);
  strokeWeight(10);
  background(100,100,100);
  img = loadImage("https://static.thenounproject.com/png/1348589-200.png");
} //end setup
void draw()
{
  image(img,130,100, width/2, height/2);
  fill(100,100,100*(int)(Math.random()));
  stroke(startY, startX,endX, endY);
  while (endY < 500){
    endX = startX + (int)(Math.random()*100);
    endY = startY + (int)(Math.random()*200)-50;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  } //end while
} //end draw
void mousePressed()
{
  startX = 0 + (int)(Math.random()*100);
  startY = 150;
  endX = 0  + (int)(Math.random()*10);
  endY = 150;
} //end mousePressed
