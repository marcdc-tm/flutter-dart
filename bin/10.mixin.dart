void main() {
  Tesla tesla = Tesla.metkleurgeladen("rood");
  while (tesla.percentageGeladen>0) {
    tesla.rijd();
  }
  tesla.rijd();
}

mixin ElectrischVoertuig {
  int aantalBatterijen;
  int actieRadius = 0;
  int percentageGeladen = 0;

  void opladen() {
    percentageGeladen = 100;
  }

  void ontlaad(int percentage) {
    percentageGeladen -= percentage;
    if (percentageGeladen<0) percentageGeladen = 0;
  }

  double volumeGeladen() {
    return percentageGeladen/100;
  }
}

class Wagen {
  String kleur;
  int zitPlaatsen;

  Wagen() : this.kleur = "wit", this.zitPlaatsen = 5;
  Wagen.metkleur(String kleur) : this.kleur = kleur, this.zitPlaatsen = 5;

  void rijd() {
    print("ik maak een ritje");
  }

  @override
  String toString() {
    return super.toString() + " met kleur " + kleur + " en " + zitPlaatsen.toString() + " zitplaatsen";
  }
}

class Tesla extends Wagen with ElectrischVoertuig {
  Tesla() : super();
  Tesla.metkleur(String kleur) : super.metkleur(kleur);
  Tesla.metkleurgeladen(String kleur) : super.metkleur(kleur) {
    opladen();
  }

  void rijd() {
    if (percentageGeladen==0) {
      print("ik moet eerst opgeladen worden...");
    } else if (volumeGeladen()<0.11) {
      print("ik maak een KORT ritje");
      percentageGeladen = 0;
    } else {
      super.rijd();
      ontlaad(11);
    }
  }
}
