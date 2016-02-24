class Avatar {
  int px;
  int py;
  int ps;

  Avatar(int x, int y, int s) {
    px = x;
    py = y;
    ps = s;
  }

  void drawAvatar() {
    fill(100, 100, 100);
    rect(px, py, ps, ps, 45);
  }

  void keyPressed() {
    if (keyPressed) {
      stroke(255, 255, 255);
      fill(255, 255, 255);
      

      if (key == 'd') {
        //px-=40;
        translate(40, 0);
        mapOrigin-=40;
        delay(150);

        print('d');
      }
      if (key == 'a') {
        //px+=40;
        translate(-40, 0);
        mapOrigin+=40;
        delay(150);
        
        print('a');
      }
      if (key == 'w') {
        //py+=40;
        delay(150);
        translate(0, -40);
        print('w');
      }
      if (key == 's') {
        //py-=40;
        delay(150);
        translate(0, 40);
        print('s');
      }
    }
  }
}