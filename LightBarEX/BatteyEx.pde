class Battery{
  int bx;
  int by;
  
  Battery(){}

  void drawBattery(int x, int y)
{
  bx = x;
  by =y;
   fill(249, 222, 179);
  rect(bx, by, 40, 40);

}
void giveLight()
  {
    if (px > bx && px < bx + 40) {
      if (py > by && py < by + 40) {
       light += 10;
      }
    }
  
}
}