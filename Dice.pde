Die bob;
int sz = 80;
int msz = 16;
int gap = 2;

void setup()
{
  size(408,430);
  noLoop();
}

void draw()
{
 int x;
 int y;
 int count = 0;
 background(216);
 for (y = 0; y < 408; y += (sz + gap)) {
   for (x = 0; x < 408; x += (sz + gap)) {
     Die bob = new Die(x,y);
     bob.show();
     bob.toss();
     bob.myX = x;
     count += bob.face;
     }
  }
     fill(0);
     text("total: " + count, 204, 419);
     textAlign(CENTER, CENTER);
}

void mousePressed()
{
  redraw();
}

class Die
{
  int face;
  int myX, myY;

  Die(int x, int y) //constructor
  {
    toss();
    myX = x;
    myY = y;
  }
    
  void toss()
  {
    face = (int)(Math.random()*6)+1;
  }
    
 // void num()
  void show()
  {
    noStroke();
    fill(0);
    strokeJoin(ROUND);
    beginShape();
      vertex(myX, myY);
      vertex(myX + sz, myY);
      vertex(myX + sz, myY + sz);
      vertex(myX, myY + sz);
    endShape();
    
    
    switch(face)
    {
      case 1:
        fill(255);
        ellipse(myX + sz / 2, myY + sz / 2, msz, msz);
        break;
      case 2:
        fill(255);
        ellipse(myX + sz / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz*3 / 4, msz, msz);
        break;
      case 3:
        fill(255);
        ellipse(myX + sz / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz / 2, myY + sz / 2, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz*3 / 4, msz, msz);
        break;
      case 4:
        fill(255);
        ellipse(myX + sz / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz / 4, myY + sz*3 / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz*3 / 4, msz, msz);
        break;
      case 5:
        fill(255);
        ellipse(myX + sz / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz / 2, myY + sz / 2, msz, msz);
        ellipse(myX + sz / 4, myY + sz*3 / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz*3 / 4, msz, msz);
        break;
      case 6:
        fill(255);
        ellipse(myX + sz / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz / 4, msz, msz);
        ellipse(myX + sz / 4, myY + sz / 2, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz / 2, msz, msz);
        ellipse(myX + sz / 4, myY + sz*3 / 4, msz, msz);
        ellipse(myX + sz*3 / 4, myY + sz*3 / 4, msz, msz);
        break;
      default:
        break;
    }
  }
}
