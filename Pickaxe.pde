class Pickaxe { 

  int x;
  int y;

  Pickaxe() {
  }

  void drawAxe(int p, int q) {
    x = p;
    y = q;
    fill(160, 160, 160);
    rect(x+15, y+5, 10, 30);
  }
}