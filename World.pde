class World {
  private int sizeX;
  private int sizeY;
  private int scale;
  private ArrayList<GameObject> objects = new ArrayList<GameObject>();
  
  World(int sX, int sY, int sc) {
    sizeX = sX;
    sizeY = sY;
    scale = sc;
  }
  
  World() {
    sizeX = 100;
    sizeY = 100;
    scale = 1;
  }
  
  void render(Location screenLoc, float z) {
    scale(z);
    translate(-screenLoc.x + (width/2)/z, -screenLoc.y + (height/2)/z);
    
    for(GameObject obj : objects) {
      /*
      go till you find the first x
      start drawing everything in the right y
      stop at the high x
      */
      obj.draw();
    }
  }
  
  Location screenToWord(Location screenLoc, Location convertPos) {
    return new Location(screenLoc.x + convertPos.x, screenLoc.y + convertPos.y);
  }
  
  boolean regesterObject(GameObject obj) {
    return objects.add(obj); //returns true if the list changed
  }
    
  PVector getSize() {
    return new PVector(sizeX, sizeY);
  }
  
  int getSizeX() {
    return sizeX;
  }
  
  int getSizeY() {
    return sizeY;
  }
}
