int xPos = 0;
int yPos = 0;
int sum = 0;

void setup()
{
  size(500, 500);
  noLoop();
}

void draw()
{
  fill(#FFFFFF);
  background(154, 203, 201);
  sum = 0;
  for(int i = 0; i<10; i++){
    for(int j = 0; j<10; j++){
  Die Die1 = new Die();
  Die1.show(i, j);
    }  
  }
  System.out.println("Total: " + sum);
}

void mousePressed()
{
    redraw();
}

class Die
{

  void show(int x, int y)
  {
    rect(x*50, y*50, 50, 50, 5);
    
    int random = (int)(Math.random()*6) + 1;
    fill(0);
    switch (random) 
    {
      case 1:  random = 6;
               ellipse(x*50+50  /4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*2/4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50  /4, y*50+ 50*3/4, 5, 5);
               ellipse(x*50+50*2/4, y*50+ 50*3/4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50*3/4, 5, 5);
               break;
      case 2:  random = 5;
               ellipse(x*50+50  /4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50  /4, 5, 5);
               ellipse(x*50+50*2/4, y*50+ 50*2/4, 5, 5);
               ellipse(x*50+50  /4, y*50+ 50*3/4, 5, 5);
               ellipse(x*50+50*3/4, y*50+ 50*3/4, 5, 5);
               break;
      case 3:  random = 4;
               ellipse(x*50+50  /4, y*50 +50  /4, 5, 5);
               ellipse(x*50+50*3/4, y*50 +50  /4, 5, 5);
               ellipse(x*50+50  /4, y*50 +50*3/4, 5, 5);
               ellipse(x*50+50*3/4, y*50 +50*3/4, 5, 5);
               break;
      case 4:  random = 3;
               ellipse(x*50+50  /4, y*50+25, 5, 5);
               ellipse(x*50+50*2/4, y*50+25, 5, 5);
               ellipse(x*50+50*3/4, y*50+25, 5, 5);
               break;
      case 5:  random = 2;
               ellipse(x*50+50/3, y*50+25, 5, 5);
               ellipse(x*50+50*2/3, y*50+25, 5, 5);
               break;
      case 6:  random = 1;
               ellipse(x*50+25, y*50+25, 5, 5);
               break;
    }
    fill(#FFFFFF);
    xPos++;
    sum += random;
  }
}
