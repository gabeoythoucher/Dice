Dice bob;
IntList numbers;
int t;
int sum;

void setup(){
  size(550,600);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw(){
  background(255);
  for(int x = 0;x<550;x+=55){
    for(int y = 0;y<550;y+=55){
      bob = new Dice(x,y);
      bob.roll();
      bob.show();
      sum+=t;
    }
  }
  textSize(25);
  text("sum:",225,575);
  text(sum,280,575);
}

void mousePressed()
{
  sum=0;
  redraw();
}

// class def
class Dice
{
  int myX, myY, r;
  Dice(int x, int y)
  {
    myX = x;
    myY = y;

  }//initialization  
  void roll(){
    r = (int)(random(1,7));
    t=r;
  }//rngroll
  void show(){
    fill(255);
    rect(myX,myY,50,50);
    fill(0);
    for(int i = 1; i<=6; i++){
      if (r == i){
        textSize(21);
        text(i,myX+25,myY+25);
      }//if
    }//for
  }
}//end dice class
