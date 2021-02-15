import 'package:meta/meta.dart';


void printElement1(int element) {
  print(element);
}

Function printElement2 = (int element) {
  print(element);
};



void main() {
  functies();

  var list = [1, 2, 3];
  list.forEach(printElement1);
  list.forEach(printElement2);

  var fruit = ['apples', 'bananas', 'oranges'];
  fruit.forEach((item) {
    print('${fruit.indexOf(item)}: $item');
  });
  fruit.forEach((item) => print('${fruit.indexOf(item)}: $item'));

  void drukAf(String item) {
    print('${fruit.indexOf(item)}: $item');
  }
  fruit.forEach((item) { drukAf(item); });
  fruit.forEach(drukAf);

  if (doSwitch("succes")) {
    print("Gelukt!");
  }
}



void functies() {
  zetOpScherm("Tom", "Kuppens", tussenvoegsel: "R.E.");
  zetOpScherm("Tom", "Kuppens", titel: "Dr.");
  print(multiply1(4, 2.5));
  print(multiply1(4, 2.5, 6));
  //print(multiply1(4, 2.5, getal1: 6));  FOUT
  print(multiply2(4, getal2: 2.5));
  print(multiply2(4, getal2: 2.5, getal3: 6));
}

void zetOpScherm(String voornaam, String achternaam, {String tussenvoegsel = "", String titel}) {
  print((titel==null ? "" : titel + " ") + voornaam + " " + tussenvoegsel + " " + achternaam);
}

double multiply1(num getal1, num getal2, [num getal3]) {
  double result = getal1 * getal2;
  if (getal3!=null) result *= getal3;
  return result;
}

double multiply2(num getal1, {@required num getal2, num getal3 = 1}) {
  return getal1 * getal2 * getal3;
}





bool doSwitch(boodschap) {
  try {
    switch (boodschap.substring(12)) {
      case "s":
        break;
      default:
    }
    return true;
  } on Error {
    print("Er trad een fout op");
    return false;
  }
}
