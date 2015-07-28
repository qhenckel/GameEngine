class Location {
  
  float x;
  float y;
  
  Location(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  Location(PVector loc) {
    x = loc.x;
    y = loc.y;
  }
  
  PVector getVector() {
    return new PVector(x, y);
  }  
}
