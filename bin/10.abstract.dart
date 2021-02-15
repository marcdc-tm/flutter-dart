abstract class LevendWezen {
  final String naam;

  LevendWezen() : this.naam = "zonder naam";
  LevendWezen.naam(String naam) : this.naam = naam;

  void spreek();
}

class Mens extends LevendWezen {
  Mens(String naam) : super.naam(naam);
  void spreek() => print("Hallo, ik ben $naam");
}

abstract class Dier extends LevendWezen {
  int poten;
  Dier(int poten) : this.poten = poten;
  Dier.naam(String naam, int poten) : super.naam(naam) {
    this.poten = poten;
  }
}

class Hond extends Dier {
  Hond(String naam) : super.naam(naam, 4);
  void spreek() => print(naam + " : Wafwaf");
}

class Mug extends Dier {
  Mug() : super(6);
  void spreek() => print(toString() + " : Zzzzzzz...");
}

void main() {
  Mens tom = Mens("Tom");
  Hond zorro = Hond("Zorro");
  Mug mug = Mug();
  tom.spreek();
  zorro.spreek();
  mug.spreek();
}