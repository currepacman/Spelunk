class Pickaxe { 

  int x;
  int y;
  int px;
  int py;

  Pickaxe() {
  }

  void drawAxe(int p, int q) {
    stroke(0);
    if(!playerAxe && sideroom1) {
    
      x = 40;
      y = 560;
    fill(199, 97, 20);
    rect(x+19, y+10, 3, 16);
    fill(160, 160, 160);
    arc(x+20, y+15, 20, 9, (7*PI)/6, (11*PI)/6, PIE);
    }
    if(playerAxe) {
      x = p;
      y = q;
      if(right) {
        fill(199, 97, 20);
    rect(x+19, y+10, 3, 16);
    fill(160, 160, 160);
    arc(x+20, y+15, 20, 9, (7*PI)/6, (11*PI)/6, PIE);
      }
      if(left) {
        fill(199, 97, 20);
    rect(x+19, y+10, 3, 16);
    fill(160, 160, 160);
    arc(x+20, y+15, 20, 9, (7*PI)/6, (11*PI)/6, PIE);
      }
      if(front) {
        fill(199, 97, 20);
    rect(x+19, y+10, 3, 16);
    fill(160, 160, 160);
    arc(x+20, y+15, 20, 9, (7*PI)/6, (11*PI)/6, PIE);
      }
      if(back) {
        fill(199, 97, 20);
    rect(x+19, y+10, 3, 16);
    fill(160, 160, 160);
    arc(x+20, y+15, 20, 9, (7*PI)/6, (11*PI)/6, PIE);
      }
    }
  }
  
  void getAxe(int a, int b) {
    px = a;
    py = b;
    if(px>=x && px<=x+40){
      if(py>=y && py <= y+40) {
        
        playerAxe = true;
      }
    }
  }
}