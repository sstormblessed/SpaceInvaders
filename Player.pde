class Player{
  
  final float AMOUNT_MOVEMENT = 4;
  final float y = height -40;
  final float w = 26, h = 20;
  float x;
  float velX;
  boolean alive = true;
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  int shotInterval = 15;
  int lastShotFired = -shotInterval;
  
  void draw(){
    fill(0,128,0);
    // noStroke()
    rect(x, y, w, h);
  }
  
  void updatePosition(){
    x += velX;
  }
  
  void checkWallCollision(){
    if(x < 0) x = 0;
    if(x + w > width) x = width - w;
  }
  
  void moveRight(){
    velX = +AMOUNT_MOVEMENT;
  }
  
  void moveLeft(){
    velX = -AMOUNT_MOVEMENT;
  }
  
  void shot(){
    if(frameCount - lastShotFired > shotInterval){
      Bullet newbullet = new Bullet(x + w/2, y + 5, Direction.UP);
      bullets.add(newbullet);
      lastShotFired = frameCount;
    }
  }
}
