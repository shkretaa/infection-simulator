class Person {
  PVector pos;
  PVector vel;
  float size = 12;

  Person(float x, float y) {
    pos = new PVector(x, y);
    // random velocity for now
    vel = PVector.random2D().mult(2);
  }

  void update() {
    // Basic Movement
    pos.add(vel);

    // Wall Bouncing 
    if (pos.x < 0 || pos.x > width) vel.x *= -1;
    if (pos.y < 0 || pos.y > height) vel.y *= -1;
  }

  void display() {
    noStroke();
    fill(100, 150, 255); // Blue
    ellipse(pos.x, pos.y, size, size);
  }
}