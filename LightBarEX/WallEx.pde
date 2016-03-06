class Wall {

  int wx;
  int wy;
  int wl;
  int ww;
  int prevX;
  int prevY;


  Wall(int x, int y, int l, int w) {
    wx = x;
    wy = y;
    wl  = l;
    ww = w;
  }

  void drawWall(int q, int p) { 
    wx  = q;
    wy = p;
    fill(139, 69, 19);
    rect(wx, wy, wl, ww);
  }
  
  boolean checkLeftMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    
      if(prevX - 40 > wx && prevX - 40 < wx + wl) {
        return false;
      }
    return true;
  }

  boolean checkRightMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    
      if (prevX + 40 > wx && prevX + 40 < wx + wl) {
        return false;
      }
    return true;
  }
  
    boolean checkUpMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    
      if (prevY - 40 > wy && prevY - 40 < wy + ww) {
        return false;
      }
    return true;
  }
  
    boolean checkDownMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    
      if (prevY + 40 > wy && prevY + 40 < wy + ww) {
        return false;
      }
    return true;
  }
  
  
  
  
  
}