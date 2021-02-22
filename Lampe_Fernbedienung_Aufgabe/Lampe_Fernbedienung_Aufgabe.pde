// Referenzen auf die Fernbedienung und die Lampe
Fernbedienung f;
Lampe lampe;

void setup()
{
  // anderer Farbenmodus
  colorMode(HSB, 360, 100, 100);
  
  size(500, 400);
  background(0,0,100);
  rectMode(CENTER);
  
  // Erzeugung des Lampenobjekts
  lampe = new Lampe(320, 200);
  // Erzeugung des Fernbedienungsobjekts
  f = new Fernbedienung(100, 110, lampe);
}

void draw()
{
  // Fernbedienung und lampe wird gezeichnet
  f.zeichnen();
  lampe.zeichnen();
}

// wird immer aufgerufen, wenn die Maus bewegt wurde
void mouseMoved() {
  f.mouseMoved();
}

// wird immer aufgerufen, wenn die Maus geklickt wurde
void mouseClicked() {
  f.mouseClicked();
}
