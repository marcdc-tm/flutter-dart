void main() {
  test1();
  test2();
  test3();

  var a = "abc"..toUpperCase()
    ..substring(1);
}

void test1() {
  double a = 17.7;
  double b = 15.2;
  print(a ~/ 5);         // 3
  print(a % 5);          // 2.7
  print(b ~/ 5);         // 3
  print(b % 5);          // 0.2
}

void test2() {
  int a = 1;
  int b = 4;
  int c = a + b++;
  print(c);              // 5
  c = a + ++b;
  print(c);              // 7
  c = a + b--;
  print(c);              // 7
  c = a + --b;
  print(c);              // 5
}

void test3() {
  var a = 4;
  assert(a is num);
  Person p = new Person();
  Object emp = p;
  (emp as Person).firstname = "Bob";
  print((emp as Person).firstname);

  p.firstname = "  Dit is de voornaam Mehdi";
  p.getrimd()
    ..vanaf(8)
    ..vanaf(11);
  print(p.firstname);
}

class Person {
  String firstname;

  Person getrimd() {
    firstname = firstname.trim();
    return this;
  }

  Person vanaf(int a) {
    firstname = firstname.substring(a);
    return this;
  }
}