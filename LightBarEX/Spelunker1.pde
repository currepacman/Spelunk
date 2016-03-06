boolean intro = false;
boolean mainroom = true;
boolean sideroom1 = false;
boolean sideroom2 = false;

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
float light = 100;
float max_light = 100;
float rectWidth = 200;


Wall wallm1;
Wall wallm2;
Wall wallm3;
Wall wallm4;
Wall wallm5;
Wall walls1;
Wall walls2;
Wall walls3;
Wall walls4;

Avatar spelunker;
Ladder ladder1;
Ladder ladder2;
Ladder ladder3;
Ladder ladder4;

Battery battery1;

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
  wallm1 = new Wall(mapOriginX, mapOriginY, tileSize, mapHeight);
  wallm2 = new Wall(mapOriginX, mapOriginY, mapLength, tileSize);
  wallm3 = new Wall(mapOriginX+mapLength-tileSize, mapOriginY, tileSize, mapHeight);
  wallm4 = new Wall(mapOriginX, mapOriginY+mapHeight-tileSize, mapLength, tileSize);
  wallm5 = new Wall(mapOriginX + (mapLength/4), mapOriginY, tileSize, mapHeight);
  
  walls1 = new Wall(mapOriginX, mapOriginY, tileSize, 600);
  walls2 = new Wall(mapOriginX, mapOriginY, 800, tileSize);
  walls3 = new Wall(mapOriginX, mapOriginY+600, 800, tileSize);
  walls4 = new Wall(mapOriginX+800,  mapOriginY, tileSize, 640);
  
  ladder1 = new Ladder();
  ladder2 = new Ladder();
  ladder3 = new Ladder();
  ladder4 = new Ladder();
  
  battery1 = new Battery();
  
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
    
    

    wallm1.drawWall(mapOriginX, mapOriginY);
    wallm2.drawWall(mapOriginX, mapOriginY);
    wallm3.drawWall(mapOriginX+mapLength-tileSize, mapOriginY);
    wallm4.drawWall(mapOriginX, mapOriginY+mapHeight-tileSize);
    wallm5.drawWall(mapOriginX + (mapLength/4), mapOriginY);
    
    spelunker.drawAvatar(px, py);
    spelunker.keyPressed();
    
    ladder1.drawLadder(mapOriginX+5+120, mapOriginY+5+640);
    ladder1.goThruLadder1();
    
    noStroke();
    fill(0,0,0,240);
    rect(px-mapLength, py-mapHeight, mapLength*2, mapHeight-70);
    rect(px-mapLength, py-70, mapLength-80, mapHeight+70);
    rect(px-80, py+90, mapLength, mapHeight);
    rect(px+100, py-70, mapLength, 160);
    
  }
  
  if(sideroom1 == true) {

    background(0);
    noStroke();
    fill(210, 180, 140);
    for (int index = 0; index < 20; index++) {
      for (int jindex = 0; jindex < 15; jindex++) {
        rect(mapOriginX+(40*index), mapOriginY + (40*jindex), 40, 40);
      }
    }
    
    walls1.drawWall(mapOriginX, mapOriginY);
    walls2.drawWall(mapOriginX, mapOriginY);
    walls3.drawWall(mapOriginX, mapOriginY+600);
    walls4.drawWall(mapOriginX+800,  mapOriginY);
    
    ladder2.drawLadder(mapOriginX+405, mapOriginY+205);
    ladder2.goThruLadder2();
    
    noStroke();
    fill(0,0,0,255);
    rect(px-mapLength, py-mapHeight, mapLength*2, mapHeight-70);
    rect(px-mapLength, py-70, mapLength-80, mapHeight+70);
    rect(px-80, py+90, mapLength, mapHeight);
    rect(px+100, py-70, mapLength, 160);
    
    spelunker.drawAvatar(px, py);
    spelunker.keyPressed();
    
    
  if ( light < 25)
    {
      fill(255,0,0);
    }
    else if ( light < 50)
    {
      fill(255, 200, 0);
    }else
    {
      fill(0,255,0);
    }
    noStroke();
    float drawWidth = (light/max_light) * rectWidth;
   rect(100,100, drawWidth, 50);
   
   stroke(0);
   noFill();
   rect(100,100, rectWidth, 50);
   
   countDown();
  fill(0);
  text("Counter: "+ counter, 20 ,40);
  battery1.drawBattery(200,300);
    
  }
  
}