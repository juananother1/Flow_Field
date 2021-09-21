class Particle
{
  PVector pos;
  PVector vel;
  float speed;
  float constMult = 0.005;
  float rot = 2;
  float noiseVal;

  Particle(float x, float y)
  {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    speed = 100;
  }

  void update()
  {
    if (pos.x >= 0 && pos.x <= width && pos.y >= 0 && pos.y <= height)
    {
      noiseVal = noise(pos.x * constMult, pos.y * constMult);
      vel = PVector.fromAngle(noiseVal * rot * PI);
      vel.setMag(speed);
      pos.add(PVector.div(vel, frameRate));
      display();
    }
  }

  void display()
  {
    fill(noiseVal * 255, 255, 255);
    noStroke();
    circle(pos.x, pos.y, 1);
  }
}
