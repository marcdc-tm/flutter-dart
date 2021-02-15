void main() {
  Wagen wagen = Wagen();
  wagen.kleur = "geel";
  wagen.zitPlaatsen = 5;
  wagen.beweeg();
  Voertuig voertuig = Voertuig.wit(28);
  voertuig.beweeg();
}

class Voertuig {
  String kleur;
  int zitPlaatsen;

  Voertuig() : this.kleur = "wit", this.zitPlaatsen = 5;
  Voertuig.volledig(String kleur, int zitPlaatsen) : this.kleur = kleur, this.zitPlaatsen = zitPlaatsen;
  Voertuig.wit(int zitPlaatsen) : this.kleur = "wit", this.zitPlaatsen = zitPlaatsen;

  @override
  String toString() {
    return super.toString() + " met kleur " + kleur + " en " + zitPlaatsen.toString() + " zitplaatsen";
  }

  void beweeg() {
    print(toString() + " BEWEEGT");
  }
}

class Wagen implements Voertuig {
  String kleur;
  int zitPlaatsen;
  void beweeg() {
    print(super.toString() + " BEWEEGT");
  }
}

