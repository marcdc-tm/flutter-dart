enum Kleur { rood, groen, blauw }

void main() {
  assert(Kleur.rood.index == 0);
  assert(Kleur.groen.index == 1);
  assert(Kleur.blauw.index == 2);
  List<Kleur> kleuren = Kleur.values;
  print(kleuren);

  var eenKleur = Kleur.blauw;

  switch (eenKleur) {
    case Kleur.rood:
      print('Rood zoals een roos!');
      break;
    case Kleur.groen:
      print('Groen als gras!');
      break;
    default:
      print(eenKleur);
  }
}

