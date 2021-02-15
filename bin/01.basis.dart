
void main() {
  var a = "test";
  print(a);
  // a = 27; -> FOUT

  dynamic b = 'test';
  print(b);
  b = 27;    // OK
  print(b);
}
