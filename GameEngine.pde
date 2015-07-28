World world;
Location screen;
float zoom;

void setup() {
  size(600,600);
  screen = new Location(0,0);
  zoom = 1;
  world = new World(100, 100, 1);
  world.regesterObject(new GameObject(new Location(0, 0)));
}

void draw() {
  background(0);
  world.render(screen, zoom);
  edgeBump();
}

void mouseClicked() {
  println("click!");
  Location worldLoc = world.screenToWord(screen, mouseLocation());
  for(GameObject obj : world.objects) {
    if(obj.locationOnObject(worldLoc)) {
      println("Ping!");
    }
  }
}

void edgeBump() {
  int padding = 50; // px
  if(mouseX > width - padding) {
    screen.x += 5;
  }
  if(mouseX < padding) {
    screen.x -= 5;
  }
  
  if(mouseY > height - padding) {
    screen.y += 5;
  }
  if(mouseY < padding) {
    screen.y -= 5;
  }
  
}

void mouseWheel(MouseEvent event) {
  float e = abs(event.getAmount());
  if(event.getAmount() > 0) {
    zoom /= 1.3 * e;
  } else {
    zoom *= 1.3 * e;
  }
}

Location mouseLocation() {
  return new Location(mouseVector());
}

PVector mouseVector() {
  return new PVector(mouseX, mouseY);
}
