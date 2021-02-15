
bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
      //assert(!topLevel);
    }

    nestedFunction();


    var f = calculate(2);
    // we roepen de closure aan
    f();
    f();
    f();

    print(zwaartekracht(planeet: 7));
    print(zwaartekracht(planeet: 7));
  }

  myFunction();
}


calculate(base) {
  var count = 1;
  // closure
  return () => print("Value is ${base + count++}");
}

Function zwaartekracht = ({int planeet = 0}) {
  const aarde = 0;
  const maan = 1;
  const mars = 2;
  const venus = 3;
  const jupiter = 4;
  if (planeet==jupiter) return 24.79;
  if (planeet==venus) return 8.87;
  if (planeet==mars) return 3.711;
  if (planeet==maan) return 1.62;
  if (planeet==aarde) return 9.807;
  return null;
};