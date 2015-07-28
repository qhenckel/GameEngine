class GameObject {
  
  private Location location;
  
  GameObject(Location loc) {
    location = loc;
  }
  
  Location getLocation() {
    return location;
  }
  
  void draw() {
   rect(location.x, location.y, 10, 10); 
  }
  
  boolean locationOnObject(Location testLoc) {
    println("flip!");
    if(testLoc.x > location.x && testLoc.x < location.x + 100) {
      println("yay!");
      return testLoc.y > location.y && testLoc.y < location.y + 100;
    }
    println("ahh!");
    return false;
  }
}
