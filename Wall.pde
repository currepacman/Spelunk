class Wall {
  
  int wx;
  int wy;
  int wl;
  int ww;
  int ax;
  int ay;
  
  
  Wall(int x, int y, int l, int w) {
    wx = x;
    wy = y;
    wl  = l;
    ww = w;
  }
  
  void drawWall(int q, int p) { 
    fill(139, 69, 19);
    rect(q, p, wl, ww);
  }
  
  boolean checkForMoveInto(int px, int py) {
    ax = px;
    ay = py;
    
    return true;
  }
  
}