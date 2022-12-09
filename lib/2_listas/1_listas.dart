void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  // Array bidimensional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  print(lista[0][1]);

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

//any
  print('.any');
  final listaBusca = ['Dalvan', 'Enio', 'Joanete'];

  if (listaBusca.any((nome) => nome == 'Dalvan')) {
    print('tem Dalvan');
  } else {
    print('não tem Dalvan');
  }

  //every
  // tem que ser verdadeira para todos os itens da lista
  print('.every');
  final listaBusca2 = ['Dalvan', 'Enio', 'Joanete'];
  if (listaBusca2.every((nome) => nome.contains('D'))) {
    print('Todos os nomes tem a letra D');
  } else {
    print('Nem todos os nomes tem a letra D');
  }

//sort
// Utilizado para ordenação. Os numeros em ordem crescente, as strings em ordem alfabética
  print('.sort');

  final listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();

  //sort com copareTo
  // Com compare to eu poupo o esforço de escrever toda a lógica comparativa abaixo:
  // if(idadePaciente1 > idadePaciente2){
  //     return 1;
  //   }else if(idadePaciente1 == idadePaciente2){
  //     return 0;
  //   }else if (idadePaciente1 < idadePaciente2){
  //     return -1;
  //   }

  print('sort com compareTo');

  var listaPacientes = [
    'Rodrigo|37',
    'Antonio|50',
    'Arthur|5',
    'Luana|35',
    'Guilherme|18',
  ];

  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listaPacientes);
}

void printAcademia(int valor) {
  print(valor);
}
