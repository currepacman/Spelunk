class Button {

  int bx;
  int by;
  int bl;
  int bh;
  int br;
  int bg;
  int bb;

  Button() {
    br = 160;
    bg = 160;
    bb = 160;
  }

  void drawButton(int x, int y, int l, int h) {
    bx = x;
    by = y;
    bl = l;
    bh = h;
    fill(160, 160, 160);
    rect(bx, by, bl, bh);

    fill(br, bg, bb);
    rect(bx + 10, by + 10, bl/2, bh-20);
  }

  boolean checkMoveInto(int px, int py) {

    if (px >= bx && px <= bx + bl) {
      if (py >= by && py <= by + bh) {
        return true;
      }
    }
    return false;
  }

  void liftTrapWall() {


    trapWall = false;


    //trapWall = true;
  }
}