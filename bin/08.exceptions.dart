
void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }

  try {
    printAantalKippen("bij start");
    kweekMeerKippen();
  } catch (e) {
    koopMeerKippen(8);      // Behandel de exception
    printAantalKippen("kippen gekocht");
  } finally {
    opruimenKippenStal();  // Opruimen
    printAantalKippen("stal opgeruimd");
  }
}

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}


int aantalKippen = 0;

Function printAantalKippen = (String boodschap) => print(boodschap + ": " + aantalKippen.toString());

Function kweekMeerKippen = () {
  if (aantalKippen==0) {
    print('geen kippen meer');
    throw 'Er zijn geen kippen meer';
  }
};

Function koopMeerKippen = (int aantal) {
  print('$aantal kippen gekocht');
  aantalKippen = aantal;
};

Function opruimenKippenStal = () {
  print('stal opgeruimd');
  aantalKippen = 0;
};

