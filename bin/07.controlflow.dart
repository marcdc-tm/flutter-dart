
void main() {
  var command = 'PAID';
  switch (command) {
    case 'DENIED':
      print(command);
      continue isClosed;
    case 'PAID':
      print(command);
      continue isClosed;
    isClosed:
    case 'CLOSED':
      print("CLOSED");
      break;
    case 'PENDING':
      print(command);
      break;
    case 'APPROVED':
      print(command);
      break;
    case 'OPEN':
      print(command);
      break;
    default:
      print("UNKNOWN");
  }


  testFuncties();

  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }

  var a = 2;
  assert(a==3, "a moet gelijk zijn aan 2");
}

void testFuncties() {
  var functies = [];
  for (var i = 0; i < 4; i++) {
    functies.add(() => print(i*i));
  }
  functies.forEach((f) => f());
}