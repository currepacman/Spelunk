class Ladder {
  int lx; 
  int ly;

  Ladder() {
  }

  void drawLadder(int x, int y) {
    lx = x;
    ly = y;
    noStroke();
    fill(249, 222, 179);
    rect(lx, ly, 30, 30);
    fill(205, 133, 63);
    for (int i = 0; i < 5; i++) {
      rect(lx+5, ly+(i*6), 20, 5);
    }
  }

  void goThruLadder1() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        mainroom = false;

        sideroom1 = true;
        mapOriginY = 0;
        mapOriginX = 0;
      }
    }
  }
  
  void goThruLadder2() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        sideroom1 = false;
        mainroom = true;
        mapOriginX = 0;
        mapOriginY = 0;
        px+=220;
        py=410;
        
        
      }
    }
  }
}