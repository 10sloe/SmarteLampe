class Fernbedienung
{
  // Attribute
  float x;
  float y;
  Button b1;
  Button b2;
  Button b3;
  Button b4;
  
  // Referenzattribute
  Lampe lampe;

  // Konstruktor
  Fernbedienung(float x_, float y_, Lampe l_)
  {
    x = x_;
    y = y_;
    b1 = new Button(x, y, "I",this);
    b2 = new Button(x, y + 60, "O", this);
    b3 = new Button(x, y + 120, "+", this);
    b4 = new Button(x, y + 180, "-", this);
    lampe = l_; 
  }
  // Methoden
  void zeichnen()
  {
    strokeWeight(1);
    fill(50,1,100);
    rect(x, y+90, 120, 260);
    b1.zeichnen();
    b2.zeichnen();
    b3.zeichnen();
    b4.zeichnen();
  }

  // Leitet das an alle Button weiter
  void mausBewegt()
  {
    b1.mausBewegt();
    b2.mausBewegt();
    b3.mausBewegt();
    b4.mausBewegt();
  }

  void mausGedrueckt()
  {
    b1.mausGedrueckt();
    b2.mausGedrueckt();
    b3.mausGedrueckt();
    b4.mausGedrueckt();
  }
  
 // Hier findet die Reaktion auf das Druecken der Button statt.
  void meldung(String s)
   {
     // Wenn die Meldung vom Button mit I kommt, wird die Lampe
     // eingeschaltet
     if (s.equals("I"))
     {
       lampe.setAn(true);
     }
     if (s.equals("O"))
     {
       lampe.setAn(false);
     }
     if (s.equals("+"))
     {
       lampe.heller();
     }
     if (s.equals("-"))
     {
       lampe.dunkler();
     }
     
   }
}
