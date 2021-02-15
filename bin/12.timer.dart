import 'dart:async';

Timer hoofdTimer;

void main() {
  klok();
  hoofdTimer = Timer(Duration(seconds: 3), () => print("Lang moeten wachten?"));
  Timer(Duration(milliseconds: 3000), () {
    print("Het bericht werd gestopt");
    hoofdTimer.cancel();
  });

  verzetKlok(0);
}

void klok() {
  Timer.periodic(Duration(seconds: 1), (mijnTimer) {
    int verstreken = mijnTimer.tick;
    print("Er zijn $verstreken seconden verstreken");
    verstreken>=10 ? mijnTimer.cancel() : null;
  });
}


void verzetKlok(int sec) {
  print("er zijn $sec seconden verstreken");
  if (sec<10) {
    Timer(Duration(seconds: 1), () => verzetKlok(sec+1));
  }
}