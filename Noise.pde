ArrayList<Particle> particles = new ArrayList(0);

void setup()
{
  size(800, 800);
  colorMode(HSB);
  background(0);
  
  for (int i=0; i < 3000; i++)
  {
    particles.add(new Particle(random(width), random(height)));
  }
}

void draw()
{
  for (Particle p : particles)
  {
    p.update();
  }
  
  if (keyPressed)
  {
    background(0);
    int noiseSeed = (int)random(100000);
    noiseSeed(noiseSeed);
  }
}
