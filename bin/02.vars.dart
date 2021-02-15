
void main() {
  versie1();
  versie2();

  metObject();
  metDynamic();

  constants();
}

void versie1() {
  print("---versie1---");
  var a;
  a = 12;
  print(a);

  int b;
  b = 12;
  print(b);
  print("------------------");
}

void versie2() {
  print("---versie2---");
  var a;
  a = "abc";    // OK
  print(a);

  int b;
  // b = "abc"; -> FOUT
  print(b);
  print("------------------");
}

void metObject() {
  print("---metObject---");
  Object a;
  a = "abc";
  print(a);
  print("------------------");
}

void metDynamic() {
  print("---metDynamic---");
  dynamic a;
  a = 12;
  print(a);
  a = "abc";
  print(a);
  print("------------------");
}

void constants() {
  print("---constants---");
  const a = 12;             // ok
  print(a);
  const double b = 4.2;     // ok
  print(b);
  // const int c = 4.2;     -> FOUT
  // const d;               -> FOUT
  final e = 12;             // ok
  print(e);
  final double f = 4.2;     // ok
  print(f);
  // final int g = 4.2;     -> FOUT
  // final h;               -> FOUT
  Test t = new Test(4);     // ok
  print(t.getA());
  print("------------------");
}

class Test {
  final int a;

  Test(this.a);

  int getA() => a;
}