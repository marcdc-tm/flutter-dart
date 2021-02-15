import 'dart:async';

void main() {
  haalGegevensOp().then((resultaat) {
    double getal;
    var onbekend;
    onbekend = resultaat;
    //getal = onbekend;
    print("Doe iets met gegevens");
  }).catchError((error) {
    print("fout bij ophalen gegevens");
  });
}

Future<String> haalGegevensOp() {
  return Future.delayed(Duration(seconds: 1), () => "Gegevens beschikbaar");
}