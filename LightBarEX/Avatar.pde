
class Avatar {
  int ax;
  int ay;
  int as;

  Avatar(int s) {

    as = s;
  }

  void drawAvatar(int x, int y) {
    ax = x;
    ay = y;
    fill(100, 100, 100);
    rect(ax, ay, as, as, 45);
  }

  void keyPressed() {
    if (keyPressed) {
      stroke(255, 255, 255);
      fill(255, 255, 255);

      if (key == 'd') {
        if (mainroom == true) {
          if (wallm3.checkRightMoveInto(px, py)) {
            if (wallm5.checkRightMoveInto(px, py)) {
              //mapOriginX-=40;
              px+=40;
              delay(100);
              print('d');
            }
          }
        }
        if(sideroom1 == true) {
          if(walls4.checkRightMoveInto(px,py)) {
            //mapOriginX-=40;
            px+=40;
            delay(100);
            print('d');
          }
        }
      }
      if (key == 'a') {
        if (mainroom == true) {
          if (wallm1.checkLeftMoveInto(px, py)) {
            if (wallm5.checkLeftMoveInto(px, py)) {
              //mapOriginX+=40;
              px-=40;
              delay(100);
              print('a');
            }
          }
        }
        if(sideroom1 == true) {
          if(walls1.checkLeftMoveInto(px,py)) {
            //mapOriginX+=40;
            px-=40;
            delay(100);
            print('a');
          }
        }
      }
      if (key == 'w') {
        if (mainroom == true) {
          if (wallm2.checkUpMoveInto(px, py)) {
            //mapOriginY+=40;
            py-=40;
            delay(100);
            print('w');
          }
        }
        if(sideroom1 == true) {
          if(walls2.checkUpMoveInto(px,py)) {
            
            py-=40;
            //mapOriginY+=40;
            delay(100);
            print('a');
          }
        }
      }
      if (key == 's') {
        if (mainroom == true) {
          if (wallm4.checkDownMoveInto(px, py)) {
            //mapOriginY-=40;
            py+=40;
            delay(100);
            print('s');
          }
        }
        if(sideroom1 == true) {
          if(walls3.checkDownMoveInto(px,py)) {
            //mapOriginY-=40;
            py+=40;
            delay(100);
            print('a');
          }
        }
      }
    }
  }
}