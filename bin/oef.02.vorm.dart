import 'dart:math';
import 'package:color/color.dart';

void main() {
  List<Kleur> kleuren = [ Kleur('rood', Color.rgb(255, 0, 0)), Kleur('groen', Color.rgb(0, 255, 0)), Kleur('blauw', Color.rgb(0, 0, 255))];
  Canvas canvas = Canvas();
  canvas.add(Cirkel(5.4));
  canvas.add(KleurCirkel(5.4, kleuren[0]));
  canvas.add(KleurCirkel(2.4, kleuren[2]));
  canvas.add(KleurVierkant(2.4, kleuren[2]));
  canvas.add(Vierkant(3));
  canvas.show();
}

class Canvas {
  List<Vorm> vormen = List();

  void add(Vorm vorm) {
    vormen.add(vorm);
  }

  void show() {
    Map<String, int> kleuren = Map();
    int zonderKleur = 0;
    double omtrek = 0;
    double oppervlak = 0;
    vormen.forEach((v) {
      omtrek += v.omtrek();
      oppervlak += v.oppervlakte();
      if (v is MetKleur) {
        MetKleur mk = (v as MetKleur);
        if (kleuren.containsKey(mk.toonKleur())) {
          kleuren[mk.toonKleur()] += 1;
        } else {
          kleuren[mk.toonKleur()] = 1;
        }
      } else {
        zonderKleur++;
      }
    });
    print("Er zijn :");
    if (zonderKleur>0) {
      print("  $zonderKleur vormen zonder kleur");
    }
    kleuren.forEach((kleur, aantal) {
      print("  $aantal vormen met kleur $kleur");
    });
    print("Totale omtrek = $omtrek");
    print("Totale oppervlakte = $oppervlak");
  }
}

abstract class Vorm {
  double oppervlakte();
  double omtrek();
}

class Kleur {
  String naam;
  Color kleur;

  Kleur(this.naam, this.kleur);
}

mixin MetKleur {
  Kleur kleur;

  String toonKleur() {
    return kleur.naam + " " + kleur.kleur.toString();
  }
}

class Cirkel implements Vorm {
  final double straal;

  Cirkel(this.straal);

  @override
  double oppervlakte() {
    return pi * straal * straal;
  }

  @override
  double omtrek() {
    return 2 * pi * straal;
  }
}

class Vierkant implements Vorm {
  final double zijde;

  Vierkant(this.zijde);

  @override
  double omtrek() {
    return 4 * zijde;
  }

  @override
  double oppervlakte() {
    return zijde * zijde;
  }
}

class KleurCirkel extends Cirkel with MetKleur {
  KleurCirkel(double straal, Kleur kleur) : super(straal) {
    this.kleur = kleur;
  }
}

class KleurVierkant extends Vierkant with MetKleur {
  KleurVierkant(double zijde, Kleur kleur) : super(zijde) {
    this.kleur = kleur;
  }
}