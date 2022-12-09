void main() {
  var numerolista = <int?>[];
  numerolista.add(1);
  numerolista.add(2);
  numerolista.add(3);
  numerolista.add(3);
  numerolista.add(null);
  numerolista.add(1);
  numerolista.add(2);
  print(numerolista);

  // Usamos quando não queremos duplicados dentro da lista. Set ñ permite duplicações
  var numeroSet = <int?>{};
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(3);
  numeroSet.add(3);
  numeroSet.add(null);
  numeroSet.add(1);
  numeroSet.add(2);
  print(numeroSet);

  print('.toSet');
  print(numerolista.toSet());

  var numeros1 = {1, 3, 5, 7};
  var numeros2 = {1, 3, 5, 6, 7, 8};

  print('.difference');
  // quais dos numeros de numeros' não tem em numeros2
  print(numeros2.difference(numeros1));

  print('.union');
  // unir as duas sem elmentos repetidos
  print(numeros2.union(numeros1));

  print('.intersection');
  // quais elementos tem em ambas. comparação por ==
  print(numeros2.intersection(numeros1));

  print('.lookup');
  // Busca por comparação um elemento igual ao descrito
  print(numeros2.lookup(numeros1));
}
