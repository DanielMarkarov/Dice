int xPos = 0;
int yPos = 0;
int sum = 0;

void setup()
{
  size(500, 520);
  noLoop();
}

void draw()
{
  fill(#FFFFFF);
  background(154, 203, 201);
  sum = 0;
  for(int i = 0; i<10; i++){
    for(int j = 0; j<10; j++){
  Die Die1 = new Die(i, j);
  Die1.show(i, j);
    }  
  }
  textSize(15);
  text("Total: " + sum, 250, 515);
}

void mousePressed()
{
    redraw();
}

class Die
{
   Die(int x, int y)
  {
    int xPos = x;
    int yPos = y;
    rect(xPos*50, yPos*50, 50, 50);
    fill(#FFFFFF);
    rect(xPos*50, yPos*50, 50, 50, 5);
  }
  
  void show(int x, int y)
  {    
    int random = (int)(Math.random()*6) + 1;
    fill(0);
    switch (random) 
    {
      case 1:  random = 6;
               fill(255, 0, 0);
               ellipse(x*50+50  /4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*2/4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50  /4, y*50+ 50*3/4, 5, 5);
               ellipse(x*50+50*2/4, y*50+ 50*3/4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50*3/4, 5, 5);
               break;
      case 2:  random = 5;
               fill(255, 124, 0);
               ellipse(x*50+50  /4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*2/4, y*50+ 50*2/4, 5, 5);
               ellipse(x*50+50  /4, y*50+ 50*3/4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50*3/4, 5, 5);
               break;
      case 3:  random = 4;
               fill(255, 230, 0);
               ellipse(x*50+50  /4, y*50 +50  /4, 5, 5);
               ellipse(x*50+50*3/4, y*50 +50  /4, 5, 5);
               ellipse(x*50+50  /4, y*50 +50*3/4, 5, 5);
               ellipse(x*50+50*3/4, y*50 +50*3/4, 5, 5);
               break;
      case 4:  random = 3;
               fill(88, 255, 0);
               ellipse(x*50+50  /4, y*50+25, 5, 5);
               ellipse(x*50+50*2/4, y*50+25, 5, 5);
               ellipse(x*50+50*3/4, y*50+25, 5, 5);
               break;
      case 5:  random = 2;
               fill(0, 74, 255);
               ellipse(x*50+50/3, y*50+25, 5, 5);
               ellipse(x*50+50*2/3, y*50+25, 5, 5);
               break;
      case 6:  random = 1;
               fill(242, 0, 255);
               ellipse(x*50+25, y*50+25, 5, 5);
               break;
    }
    fill(#FFFFFF);
    xPos++;
    sum += random;
  }
}
