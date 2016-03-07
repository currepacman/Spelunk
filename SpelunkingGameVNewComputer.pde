boolean intro = false;
boolean mainroom = true;
boolean sideroom1 = false;
boolean sideroom2 = false;
boolean sideroom3 = false;

boolean front = true;
boolean left = false;
boolean right = false;
boolean back = false;

boolean trapWall = false;
int trapWallCounter = 0;


int translateX;
int translateY;

int mapLength;
int mapHeight;
int tileSize;
int mapOriginX;
int mapOriginY;
int moveCounterX;
int moveCounterY;

int px;
int py;
int ps;

int delay;

int l1r = 255;
int l1g = 0;
int l1b = 0;
int l2r = 255;
int l2g = 0;
int l2b = 0;
int l3r = 255;
int l3g = 0;
int l3b = 0;

Wall wallm1;
Wall wallm2;
Wall wallm3;
Wall wallm4;
Wall wallm5;
Wall wallm6;
Wall wallm7;
Wall wallm8;
Wall wallm9;
Wall wallm10;
Wall wallm11;
Wall wallm12;
Wall wallm13;
Wall wallm14;
Wall wallm15;
Wall wallm16;
Wall wallm17;
Wall wallm18;
Wall wallm19;

Wall walls1;
Wall walls2;
Wall walls3;
Wall walls4;
Wall walls5;
Wall walls6;
Wall walls7;
Wall walls8;
Wall walls9;
Wall walls10;
Wall walls11;
Wall walls12;
Wall walls13;
Wall walls14;
Wall walls15;
Wall walls16;
Wall walls17;
Wall walls18;
Wall walls19;
Wall walls20;
Wall walls21;

BreakableWall breakable1;
boolean broken1 = false;

boolean break1b = true;
boolean break1c = true;
boolean break1d = true;
BreakableWall breakable2;

boolean break2a = true;
boolean break2b = true;
boolean break2c = true;
boolean break2d = true;

Avatar spelunker;
Ladder ladder1;
Ladder ladder2;
Ladder ladder3;
Ladder ladder4;
Ladder ladder5;
Ladder ladder6;

Button button1;
Button button2;
Button button3;
Button button4; 
Button button5;
Button button6;


Pickaxe pickaxe;
boolean playerAxe = false;

void setup() {

  size(1600, 880);
  background(255);

  mapLength = 1600;
  mapHeight = 880;
  tileSize = 40;
  mapOriginX = 0;
  mapOriginY = 0;

  px = 50;
  py = 50;
  ps = 20;
  spelunker = new Avatar(ps);
  wallm1 = new Wall();
  wallm2 = new Wall();
  wallm3 = new Wall();
  wallm4 = new Wall();
  wallm5 = new Wall();
  wallm6 = new Wall();
  wallm7 = new Wall();
  wallm8 = new Wall();
  wallm9 = new Wall();
  wallm10 = new Wall();
  wallm11 = new Wall();
  wallm12 = new Wall();
  wallm13 = new Wall();
  wallm14 = new Wall();
  wallm15 = new Wall();
  wallm16 = new Wall();
  wallm17 = new Wall();
  wallm18 = new Wall();
  wallm19 = new Wall();

  walls1 = new Wall();
  walls2 = new Wall();
  walls3 = new Wall();
  walls4 = new Wall();
  walls5 = new Wall();
  walls6 = new Wall();
  walls7 = new Wall();
  walls8 = new Wall();
  walls9 = new Wall();
  walls10 = new Wall();
  walls11 = new Wall();
  walls12 = new Wall();
  walls13 = new Wall();
  walls14 = new Wall();
  walls15 = new Wall();
  walls16 = new Wall();
  walls17 = new Wall();
  walls18 = new Wall();
  walls19 = new Wall();
  walls20 = new Wall();
  walls21 = new Wall();
  
  breakable1 = new BreakableWall();
  breakable2 = new BreakableWall();

  ladder1 = new Ladder();
  ladder2 = new Ladder();
  ladder3 = new Ladder();
  ladder4 = new Ladder();
  ladder5 = new Ladder();
  ladder6 = new Ladder();

  button1 = new Button();
  button2 = new Button();
  button3 = new Button();
  button4 = new Button();
  button5 = new Button();
  button6 = new Button();

  pickaxe = new Pickaxe();
}

void draw() {
  if (mainroom  == true) {
    background(0);
    noStroke();
    fill(210, 180, 140);
    for (int index = 0; index < 40; index++) {
      for (int jindex = 0; jindex < 22; jindex++) {
        rect(mapOriginX+(40*index), mapOriginY + (40*jindex), 40, 40);
      }
    }

    fill(0, 0, 0);
    rect(mapOriginX - mapLength, mapOriginY - mapHeight, mapLength * 3, mapHeight);
    rect(mapOriginX - mapLength, mapOriginY, mapLength, mapHeight*2);
    rect(mapOriginX, mapOriginY +mapHeight, mapLength * 2, mapHeight);
    rect(mapOriginX + mapLength, mapOriginY, mapLength, mapHeight);



    wallm1.drawWall(mapOriginX, mapOriginY, tileSize, mapHeight);
    wallm2.drawWall(mapOriginX, mapOriginY, mapLength, tileSize);
    wallm3.drawWall(mapOriginX+mapLength-tileSize, mapOriginY, tileSize, mapHeight);
    wallm4.drawWall(mapOriginX, mapOriginY+mapHeight-tileSize, mapLength, tileSize);
    wallm5.drawWall(120, 320, 160, 40);
    wallm6.drawWall(120, 360, 240, 80);
    wallm7.drawWall(120, 440, 760, 160);
    wallm8.drawWall(440, 600, 440, 80);
    wallm9.drawWall(120, 680, 560, 120);
    wallm10.drawWall(320, 120, 560, 160);
    wallm11.drawWall(440, 280, 160, 80);
    wallm12.drawWall(600, 280, 40, 40);
    wallm13.drawWall(640, 280, 240, 80);
    wallm14.drawWall(880, 240, 160, 120);
    wallm15.drawWall(1040, 320, 280, 240);
    wallm16.drawWall(1080, 120, 240, 160);
    wallm17.drawWall(1320, 120, 160, 440);
    wallm18.drawWall(880, 560, 440, 280);
    
    breakable1.drawWall(840, 360);
    

    stroke(255);
    fill(l1r, l1g, l1b);
    rect(1320, 800, 40, 40);
    fill(l2r, l2g, l2b);
    rect(1360, 800, 40, 40);
    fill(l3r, l3g, l3b);
    rect(1400, 800, 40, 40);
    
    

    ladder1.drawLadder(600, 320);
    ladder1.goThruLadder1();

    ladder2.drawLadder(840, 680);
    ladder2.goThruLadder2();

    ladder3.drawLadder(1280, 280);
    ladder3.goThruLadder3();

    button1.drawButton(200, 600, 40, 80);

    if (button1.checkMoveInto(px, py)) {
      if (trapWallCounter == 0) {
        trapWall = true;
        trapWallCounter++;
      }
    }
    if (trapWall) {
      button1.bg = 50;
      button1.br = 50;
      button1.bb = 50;
      wallm19.drawWall(120, 600, 40, 80);
    }

    button2.drawButton(400, 600, 40, 40);
    if (button2.checkMoveInto(px, py)) {
      button2.br = 50;
      button2.bg = 50;
      button2.bb = 50;
      button2.liftTrapWall();
    }

    button3.drawButton(1000, 520, 40, 40);
    if (button3.checkMoveInto(px, py)) {
      button3.br = 50;
      button3.bg = 50;
      button3.bb = 50;
      l2r = 0;
      l2g =255;
    }
    noStroke();
    fill(l2r, l2g, l2b);
    rect(1013, 533, 14, 14);
    /*
    noStroke();
     fill(0,0,0,240);
     rect(px-mapLength, py-mapHeight, mapLength*2, mapHeight-70);
     rect(px-mapLength, py-70, mapLength-80, mapHeight+70);
     rect(px-80, py+90, mapLength, mapHeight);
     rect(px+100, py-70, mapLength, 160);
     */

    if (front) {
      spelunker.drawAvatarFront(px, py);
    }
    if (back) {
      spelunker.drawAvatarBack(px, py);
    }
    if (right) {
      spelunker.drawAvatarRight(px, py);
    }
    if (left) {
      spelunker.drawAvatarLeft(px, py);
    }
    spelunker.keyPressed();
    pickaxe.drawAxe(px, py);
  }

  if (sideroom1 == true) {

    background(0);
    noStroke();
    fill(210, 180, 140);
    for (int index = 0; index < 20; index++) {
      for (int jindex = 0; jindex < 15; jindex++) {
        rect(mapOriginX+(40*index), mapOriginY + (40*jindex), 40, 40);
      }
    }

    walls1.drawWall(mapOriginX, mapOriginY, tileSize, 600);
    walls2.drawWall(mapOriginX, mapOriginY, 800, tileSize);
    walls3.drawWall(mapOriginX, mapOriginY+600, 800, tileSize);
    walls4.drawWall(mapOriginX+800, mapOriginY, tileSize, 640);
    walls5.drawWall(80, 160, 40, 280);
    walls6.drawWall(80, 440, 160, 40);
    walls7.drawWall(280, 160, 200, 320);
    walls8.drawWall(520, 160, 40, 280);
    walls9.drawWall(520, 440, 160, 40);

    ladder4.drawLadder(40, 40);
    ladder4.goThruLadder4();
    
    pickaxe.drawAxe(px, py);
    pickaxe.getAxe(px, py);
    
    /*
    noStroke();
     fill(0,0,0,255);
     rect(px-mapLength, py-mapHeight, mapLength*2, mapHeight-70);
     rect(px-mapLength, py-70, mapLength-80, mapHeight+70);
     rect(px-80, py+90, mapLength, mapHeight);
     rect(px+100, py-70, mapLength, 160);
     */

    if (front) {
      spelunker.drawAvatarFront(px, py);
    }
    if (back) {
      spelunker.drawAvatarBack(px, py);
    }
    if (right) {
      spelunker.drawAvatarRight(px, py);
    }
    if (left) {
      spelunker.drawAvatarLeft(px, py);
    }
    pickaxe.drawAxe(px, py);
    spelunker.keyPressed();
  }

  if (sideroom2 == true) {

    background(0);
    noStroke();
    fill(210, 180, 140);
    for (int index = 0; index < 40; index++) {
      for (int jindex = 0; jindex < 22; jindex++) {
        rect(mapOriginX+(40*index), mapOriginY + (40*jindex), 40, 40);
      }
    }

    walls1.drawWall(0, 0, tileSize, 880);
    walls2.drawWall(0, 0, 1560, tileSize);
    walls3.drawWall(0, 840, 1560, tileSize);
    walls4.drawWall(1560, 0, tileSize, 880);
    walls5.drawWall(40, 120, 120, 120);
    walls6.drawWall(40, 240, 1320, 40);
    walls7.drawWall(240, 80, 1280, 40);
    walls8.drawWall(240, 160, 1200, 40);
    walls9.drawWall(240, 600, 1080, 40);
    walls10.drawWall(200, 680, 1200, 40);
    walls11.drawWall(120, 760, 1360, 40);
    walls12.drawWall(1480, 120, 40, 680);
    walls13.drawWall(1400, 200, 40, 520);
    walls14.drawWall(1320, 280, 40, 360);
    walls15.drawWall(80, 280, 40, 520);
    walls16.drawWall(160, 320, 40, 400);
    walls17.drawWall(240, 400, 40, 240);
    walls18.drawWall(280, 400, 920, 40);
    walls19.drawWall(320, 520, 920, 40);
    walls20.drawWall(1240, 360, 40, 200);
    walls21.drawWall(200, 320, 1080, 40);
    
    button4.drawButton(1200, 480, 40, 40);
    if(button4.checkMoveInto(px, py)) {
      button3.br = 50;
      button3.bg = 50;
      button3.bb = 50; 
      l3r = 0;
      l3g = 255;
    }
    fill(l3r, l3g, l3b);
    rect(1213, 493, 14, 14);


    ladder5.drawLadder(40, 40);
    ladder5.goThruLadder5();

    /*
    noStroke();
     fill(0,0,0,255);
     rect(px-mapLength, py-mapHeight, mapLength*2, mapHeight-70);
     rect(px-mapLength, py-70, mapLength-80, mapHeight+70);
     rect(px-80, py+90, mapLength, mapHeight);
     rect(px+100, py-70, mapLength, 160);
     */

    if (front) {
      spelunker.drawAvatarFront(px, py);
    }
    if (back) {
      spelunker.drawAvatarBack(px, py);
    }
    if (right) {
      spelunker.drawAvatarRight(px, py);
    }
    if (left) {
      spelunker.drawAvatarLeft(px, py);
    }
    pickaxe.drawAxe(px, py);
    spelunker.keyPressed();
  }

  if (sideroom3 == true) {

    background(0);
    noStroke();
    fill(210, 180, 140);
    for (int index = 0; index < 20; index++) {
      for (int jindex = 0; jindex < 15; jindex++) {
        rect(mapOriginX+(40*index), mapOriginY + (40*jindex), 40, 40);
      }
    }

    walls1.drawWall(mapOriginX, mapOriginY, tileSize, 600);
    walls2.drawWall(mapOriginX, mapOriginY, 800, tileSize);
    walls3.drawWall(mapOriginX, mapOriginY+600, 800, tileSize);
    walls4.drawWall(mapOriginX+800, mapOriginY, tileSize, 640);
    walls5.drawWall(160, 40, 40, 80);
    walls6.drawWall(80, 120, 40, 80);
    walls7.drawWall(80, 200, 200, 40);
    walls8.drawWall(320, 120, 80, 40);
    walls9.drawWall(520, 120, 280, 40);
    walls10.drawWall(520, 280, 160, 40);
    walls11.drawWall(480, 120, 40, 200);
    walls12.drawWall(360, 240, 40, 360);
    walls13.drawWall(240, 280, 40, 80);
    walls14.drawWall(200, 360, 120, 40);
    walls15.drawWall(40, 360, 120, 40);
    walls16.drawWall(80, 480, 120, 40);
    walls17.drawWall(160, 520, 40, 40);
    walls18.drawWall(520, 400, 200, 40);
    walls19.drawWall(480, 400, 40, 200);

    ladder6.drawLadder(40, 40);
    ladder6.goThruLadder6();

    
    /*
    noStroke();
     fill(0,0,0,255);
     rect(px-mapLength, py-mapHeight, mapLength*2, mapHeight-70);
     rect(px-mapLength, py-70, mapLength-80, mapHeight+70);
     rect(px-80, py+90, mapLength, mapHeight);
     rect(px+100, py-70, mapLength, 160);
     */

    if (front) {
      spelunker.drawAvatarFront(px, py);
    }
    if (back) {
      spelunker.drawAvatarBack(px, py);
    }
    if (right) {
      spelunker.drawAvatarRight(px, py);
    }
    if (left) {
      spelunker.drawAvatarLeft(px, py);
    }
    pickaxe.drawAxe(px, py);
    spelunker.keyPressed();
  }
}