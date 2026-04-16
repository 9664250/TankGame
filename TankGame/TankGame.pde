// Cassandra Knoll || Apr 14 2026 || Tank Game
PImage bg;
Tank tank1; //declaring tank's name
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

void setup() {
  size(750, 750);
  bg = loadImage("bg1.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(width/2, height/2));
  obstacles.add(new Obstacle(40, 100));
}

void draw () {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  tank1.display();
  for (int i = 0; i < obstacles.size(); i++) {
  Obstacle obs = obstacles.get(i);
  obs.display();
  obs.move();
}

}

void keyPressed() {
  if (key == 'w') {
    tank1.move('w');
  } else if (key == 'a') {
      tank1.move('a');
  } else if (key == 'd') {
        tank1.move('d');
  } else if (key == 's') {
          tank1.move('s');
        }
      }
