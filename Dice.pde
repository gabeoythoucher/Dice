Dice bob;

void setup(){
  size(500,500);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw(){
  bob = new Dice(50,50);
  bob.roll();
  bob.show();


}

void mousePressed()
{
  redraw();
}
class Dice
{
  int myX, myY, r;
  Dice(int x, int y)
  {
    myX = x;
    myY = y;

  }  
  void roll(){
    r = (int)(random(1,6));
  }
  void show(){
    fill(255);
    noStroke();
    rect(myX,myY,50,50);
    fill(0);
    for(int i = 1; i<=6; i++){
      if (r == i){
        text(i,myX,myY);
      }
    }
  }
}
