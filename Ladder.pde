class Ladder {
  int lx; 
  int ly;

  Ladder() {
  }

  void drawLadder(int x, int y) {
    lx = x + 5;
    ly = y + 5;
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
        px = 90;
        py = 90;
      }
    }
  }

  void goThruLadder2() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        sideroom2 = true;
        mainroom = false;
        px=90;
        py=90;
      }
    }
  }

  void goThruLadder3() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        sideroom3 = true;
        mainroom = false;
        px = 50;
        py = 90;
      }
    }
  }

  void goThruLadder4() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        sideroom1 = false;
        mainroom = true;
        px = 610;
        py = 410;
      }
    }
  }

  void goThruLadder5() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        sideroom2 = false;
        mainroom = true;
        px = 850;
        py = 730;
      }
    }
  }

  void goThruLadder6() {
    if (px > lx && px < lx + 40) {
      if (py > ly && py < ly + 40) {
        sideroom3 = false;
        mainroom = true;
        px = 1250;
        py = 290;
      }
    }
  }
}