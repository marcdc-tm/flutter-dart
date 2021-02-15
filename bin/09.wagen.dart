void main() {
  Wagen wagen1 = Wagen();
  wagen1.startMotor();
  Wagen wagen2 = Wagen.volledig("groen", 2);
  Wagen wagen3 = Wagen.wit(7);
  print(wagen1);
  print(wagen2);
  print(wagen3);
  BestelWagen wagen4 = BestelWagen.wit(8.4);
  print(wagen4);
  NWagen wagen5 = NWagen("purper");
  print(wagen5);
}

class Wagen {
  String kleur;
  int zitPlaatsen;

  Wagen() : this.kleur = "wit", this.zitPlaatsen = 5;
  Wagen.volledig(String kleur, int zitPlaatsen) : this.kleur = kleur, this.zitPlaatsen = zitPlaatsen;
  Wagen.wit(int zitPlaatsen) : this.kleur = "wit", this.zitPlaatsen = zitPlaatsen;

  @override
  String toString() {
    return super.toString() + " met kleur " + kleur + " en " + zitPlaatsen.toString() + " zitplaatsen";
  }

  void startMotor() => print('Motor is gestart');
}

class BestelWagen extends Wagen {
  double laadVermogen;

  BestelWagen(String kleur, double laadVermogen) : super.volledig(kleur, 5) {
    this.laadVermogen = laadVermogen;
    print("BestelWagen constructor");
  }

  BestelWagen.wit(double laadVermogen) : super.wit(5) {
    this.laadVermogen = laadVermogen;
    print("BestelWagen.wit constructor");
  }

  @override
  String toString() {
    return super.toString() + " en laadVermogen " + laadVermogen.toString();
  }
}

class NWagen {
  String kleur;
  NWagen(String kleur) {
    this.kleur = kleur;
  }
}
