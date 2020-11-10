/*
Growing Lines by Yeseul Song
2017-02-23
*/


Canvas c = new Canvas();
ArrayList<PVector>currentMark = new ArrayList<PVector>();
float brushSize = 4.0;

void setup() {
  size(1200, 800, P3D);
  background(0);
  smooth();
  noFill();
  stroke(255);
}

void draw() {
  strokeWeight(brushSize);
  c.render();
}

void mouseDragged() {
  currentMark.add(new PVector(mouseX, mouseY));
  beginShape();
  for (PVector m : currentMark) {
    vertex(m.x, m.y);
  }
  endShape();
}

void mouseReleased() {
  PVector[] p = new PVector[currentMark.size()];
  c.points.add(currentMark.toArray(p));
  currentMark.clear();
}


void keyPressed() {
  if (key == CODED) {
    switch(keyCode) {
    case RIGHT:
      if (c.wigglyAmount < 10) {
        c.wigglyAmount+=0.1;
      }
      break;    
    case LEFT:
      if (c.wigglyAmount > 0.1) {
        c.wigglyAmount-=0.1;
      }
      break;

    case UP:
      brushSize *= 2.0;
      break;
    case DOWN:  
      brushSize /= 2.0;
      break;
    }
  } else {
    switch (key) {
    case 'c':
      c.clear();
      break;
    }
  }
}
