class BreakableWall {

  int wx;
  int wy;
  int wl;
  int ww;
  int prevX;
  int prevY;
  boolean break1 =false;
  boolean break2 = false;
  boolean break3 = false;
  boolean break4 = false;

  BreakableWall() {
  }

  void drawWall(int x, int y) { 
    wx  = x;
    wy = y;
    stroke(0);
    fill(139, 69, 19);
    if(!break1) {
    rect(wx, wy,20,20);
    rect(wx+20, wy, 20, 20);
    rect(wx, wy+20, 20, 20);
    rect(wx+20, wy+20, 20, 20);
    }
    if(break1 && !break2) {
      rect(wx+20, wy, 20, 20);
    rect(wx, wy+20, 20, 20);
    rect(wx+20, wy+20, 20, 20);
    }
    if(break1 && break2 && !break3) {
      rect(wx, wy+20, 20, 20);
    rect(wx+20, wy+20, 20, 20);
    }
    if(break1 && break2 && break3 && !break4) {
      rect(wx+20, wy+20, 20, 20);
    }
    
  }
  
  void checkRightHit() {
    if(!playerAxe) {
      return;
    }
    if(playerAxe) {
      if(px>=wx-40 && px <= wx) {
        if(py>=wy && py +40 <= wy+ww) {
          if(!break1) {
            break1 =true;
            noStroke();
            fill(210, 180, 140);
            rect(wx, wy, 20, 20);
            return;
          }
          if(break1 && !break2) {
            break2 = true;
            noStroke();
            fill(210, 180, 140);
            rect(wx, wy+20, 20, 20);
            return;
          }
          if(break1 && break2 && !break3) {
            break3 = true;
            noStroke();
            fill(210, 180, 140);
            rect(wx+20, wy, 20, 20);
            return;
          }
          if(break1 && break2 && break3 && !break4) {
            break4 = true;
            noStroke();
            fill(210, 180, 140);
            rect(wx+20, wy+20, 20, 20);
            broken1 = true;
            return;
          }
          
        }
      }
    }
    
  }
  
  void checkLeftHit() {
    
    
  }

  boolean checkLeftMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    if (prevY >= wy && prevY <= wy + ww) {
      if (prevX - 40 > wx && prevX - 40 < wx + wl) {
        return false;
      }
    }
    return true;
  }

  boolean checkRightMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    if (prevY >= wy && prevY <= wy + ww) {
      if (prevX + 40 > wx && prevX + 40 < wx + wl) {
        return false;
      }
    }
    return true;
  }

  boolean checkUpMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    if (prevX >= wx && prevX <= wx + wl) {
      if (prevY - 40 > wy && prevY - 40 < wy + ww) {
        return false;
      }
    }
    return true;
  }

  boolean checkDownMoveInto(int px, int py) {
    prevX = px;
    prevY = py;
    if (prevX >= wx && prevX <= wx + wl) {
      if (prevY + 40 > wy && prevY + 40 < wy + ww) {
        return false;
      }
    }
    return true;
  }
}