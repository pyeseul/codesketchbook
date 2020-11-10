/*
Growing Lines by Yeseul Song
2017-02-23
*/

class Canvas {
  ArrayList<PVector[]> points = new ArrayList<PVector[]>();
  float wigglyAmount = 0.5;

  void render() {
    background(0);  
    for (PVector lines[] : points) {
      //point(l.x,l.y);
      beginShape();
      for (PVector l : lines) {
        l.sub(random(-wigglyAmount, wigglyAmount), random(-wigglyAmount, wigglyAmount)); 
        vertex(l.x, l.y);
      }
      endShape();
    }
  }

  void clear() {
    points.clear();
  }
}
