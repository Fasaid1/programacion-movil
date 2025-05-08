void main() {
  List<String> frases = [
    "Anita lava la tina",
    "No subas, abuson",
    "!kayak¡",
    "Esto no es un palíndromo"
    "Luz azul"
  ];

  for (String frase in frases) {
    if (esPalindromo(frase)) {
      print("$frase es un palíndromo.");
    } else {
      print("$frase no es un palíndromo.");
    }
  }
}

bool esPalindromo(String cadena) {
  String proceso = cadena
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]'), '');

  int i = 0;
  int j = proceso.length - 1;
  while (i < j) {
    if (proceso[i] != proceso[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}