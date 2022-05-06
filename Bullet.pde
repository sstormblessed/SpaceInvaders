enum Direction {
  UP, DOWN
};

class Bullet {
  final float AMOUNT_MOVEMENT = 4;
  final float w = 3, h = 5;
  float y;
  float x;
  float velY;

  Bullet(float x, float y, Direction dir) {
    this.x = x;
    this.y = y;
    this.velY = dir == Direction.UP? - AMOUNT_MOVEMENT : + AMOUNT_MOVEMENT;
  }

  void draw() {
    fill(255, 0, 0);
    // noStroke()
    rect(x, y, w, h);
  }

  void updatePosition() {
    y += velY;
  }

  boolean checkWallCollision() {
    if (y < 0) return true;
    if (y - h > height) return true;

    return false;
  }
}
