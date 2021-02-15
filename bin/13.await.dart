import 'dart:async';

void main() async {
  String resultaat = await haalGegevensOp();
  print(resultaat);
  print("Doe iets met gegevens");
}

Future<String> haalGegevensOp() {
  return Future.delayed(Duration(seconds: 1), () => "Gegevens beschikbaar");
}