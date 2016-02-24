boolean intro = false;
boolean mainroom = true;
boolean sideroom1 = false;
boolean sideroom2 = false;

int translateX;
int translateY;

int mapLength;
int mapHeight;
int tileSize;
int mapOrigin;

Wall wall1;
Avatar spelunker;

void setup() {
  
  size(1600,880);
  background(255);
  
  mapLength = 1600;
  mapHeight = 880;
  tileSize = 40;
  mapOrigin = 0;
  
  int px = 810;
  int py = 530;
  int ps = 20;
  spelunker = new Avatar(px, py, ps);
  wall1 = new Wall(mapOrigin, mapOrigin, tileSize, mapHeight);
}

void draw() {
  if(mainroom  == true) {
    stroke(0, 0, 0);
    fill(255, 255, 255);
    for (int index = 0; index < 40; index++) {
      for (int jindex = 0; jindex < 22; jindex++) {
        rect(40*index, 40*jindex, 40, 40);
      }
    }
  }
  
  wall1.drawWall(mapOrigin, mapOrigin);
  spelunker.drawAvatar();
  spelunker.keyPressed();
  
}