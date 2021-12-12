import processing.sound.*;
SoundFile bass; 


PVector location;
PVector velocity;
PVector acc;


void setup() {
  size(1000, 800, P2D);
  frameRate(144);

  bass = new SoundFile(this, "Bass2.wav");

  location = new PVector(width/2, height/2);
  velocity = new PVector(1,1);
  acc = new PVector(0.0001, -0.0001);
}

void draw() {
  background(50);

  ellipse(location.x, location.y, 20, 20);

  location.add(velocity);
  bass.amp(0.2);

  if (location.x >width || location.x < 0) {
    velocity.x =velocity.x*-1;

    bass.stop();
    bass.play();
  }

  if (location.y >height || location.y < 0) {
    velocity.y =velocity.y*-1;

    bass.stop();
    bass.play();
  }
}
