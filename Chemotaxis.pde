Bees [] colony = new Bees[500];
PImage img;

void setup()   
{     
  size(700, 600);
  img = loadImage("https://t3.ftcdn.net/jpg/00/37/65/26/360_F_37652670_xGEoL6A9LcNqSp4TTlzkTXPQavQf8yNw.jpg");
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bees();
  }
}   
void draw()   
{    
  background(255);
  image(img, 200, 100, width, height);
  fill(100);
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}  
void mouseClicked() {
  setup();
}
class Bees   
{     
  int myX, myY, myColor;
  Bees() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  void move() {
    if ((myX >= 200 && myX <= 250) && (myY >= 350 && myY <= 405)) {
      myX = X;
      myY = Y;
    } else if (mouseX > myX) {
      myX = myX + (int)(Math.random()*5);
    } else {
      myX = myX - (int)(Math.random()*5);
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*5);
    } else {
      myY = myY - (int)(Math.random()*5);
    }
  }
  void show() {
    fill(255,255,0);
    ellipse(myX, myY, 10, 5);
    ellipse(myX, myY, 5, 5);
  }
}
