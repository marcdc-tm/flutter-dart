import 'dart:math';

class Punt {
  double x, y;
  Punt(this.x, this.y);

  double afstandTot(Punt b) {
    return Punt.afstandTussen(this, b);
  }

  static double afstandTussen(Punt a, Punt b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Punt(2, 2);
  var b = Punt(4, 4);
  print(Punt.afstandTussen(a, b));
  print(a.afstandTot(b));
  print(b.afstandTot(a));
}