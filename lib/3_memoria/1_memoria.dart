void main() {
  var lista = ['Dalvan'];
  print(lista.hashCode);
  print(lista);
  funcao(lista);
  print(lista);

  var list = ['Enio'];
  print(list);
  add(list);
  print(list);
}

// hashCode vai criar uma referencia numerica da lista na memória
void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

// Assim seria correto pois não alteraria a lista na memória, mas a originial continua intacta.
// Melhor duplicar que alterar a original
List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Dalvan Reuse');
  print(novoNomes);
  return novoNomes;
}
