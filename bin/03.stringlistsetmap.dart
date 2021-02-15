import 'package:characters/characters.dart';

dynamic a = "test";
Object b = "test";

void main() {
  printLengths();
  testString();
  testArray();
  testSetMap();
}

void printLengths() {
  // no warning
  print(a.length);

  // error:
  // The getter 'length' is not defined for the class 'Object'
  //print(b.length);
}

void testSetMap() {
  var een2Set = {};
  een2Set[0] = "abc";
  print(een2Set);

  Map<double, String> een2Map = {1.2: "een", 3.7: "twee"};
  een2Map[5] = "drie";
  print(een2Map);

  Map<Object, dynamic> een3Map = {0: "een", "twee": 1, 5.7: "drie", [1, 2]: "25"};
  een3Map["twee"] = "twee";
  print(een3Map);

  var eenSet = {"a", "b", "c"};
  print(eenSet.elementAt(1));
  print("Toevoegen van d is " + (eenSet.add("d") ? "" : "NIET") + " gelukt");
  print("Toevoegen van b is " + (eenSet.add("b") ? "" : "NIET") + " gelukt");
  print(eenSet);
  print("De set bevat " + eenSet.length.toString() + " items");

  var eenMap = {"een": "item1", "twee": "item2", "drie": "item3"};
  Map<String, String> nogEenMap = {
    "een": "item1",
    "twee": "item2",
    "drie": "item3"
  };
  print(eenMap);
  print(nogEenMap);
}

void testArray() {
  var a;
  a = [1, "abc", 3];
  print(a);
  print(a[2]);
  a[2] = "abc";
  print(a);

  List<String> c;
  c = ["a", "b", "c"];
  print(c);

  var l1 = [1, 2, 3];
  var l3;
  var l2 = [...l1, 4, 5, 6, ...?l3];
  print(l2);

  var f = ["abc", "d", "e"];
  var g = ["2", "3", ...f];
  print(g);

  bool promoActive = true;
  var nav = ["Woning", 'Huishouden', "Tuin", if (promoActive) 'Outlet'];
  print(nav);
  List<int> listInts = [3, 4, 5];
  List<String> listStrings = [
    "Nr. 1",
    "Nr. 2",
    for (int i in listInts) "Nr. $i"
  ];
  print(listStrings);

  var ab = 4;
  //List<int> b = [1, 2, 3, if (ab) ab];
}

void testString() {
  String a = "abc";
  print("Het alfabet begint met $a");
  print('Het alfabet begint met ${a}');
  print("De som van 1 en 2 is ${1 + 2}");

  String s1 = 'Dit is'
      ' '
      "geldige code";
  String s2 = "En " + "dit" + ' ook';
  print(s1);
  print(s2);

  String s3 = 'Dit is een string'
      ' '
      'over vershillende lijnen';
  String s4 = '''Dit is ook een string
   over verschillende lijnen''';
  print(s3);
  print(s4);

  String hi = 'Lemon \u{1f34b}';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}\n');

  print(hi.codeUnits);
  for (int i = 0; i < hi.length; i++) {
    String char = hi[i];
    print("code unit for $char is ${hi.codeUnitAt(i)}");
  }

  Runes charCodes = new Runes(hi);
  print(charCodes.toList());
}
