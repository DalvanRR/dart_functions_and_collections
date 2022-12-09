void main() {
  //Mapa é uma representação de CHAVE : VALOR
  // sem ser nulo e com tudo inicializado
  final paciente = <String, String>{
    'nome': 'Dalvan',
    'curso': 'Academia do Flutter'
  };

//pode ser nulo
  Map<String, String>? pacienteNullSafety = null;

// precisa ser inicializado, mas pode passar valores nulos se houver a '?'
  Map<String?, String> pacienteNullSafety2 = {
    null: 'Dalvan',
  };
  Map<String, String?> pacienteNullSafety3 = {
    'nome': null,
  };

// pode ser representado assim
  var pacienteNullSafety4 = <String, String?>{
    'nome': null,
  };

  var produtos = <String, String>{};
  produtos.putIfAbsent('Idade', () => '25 anos');
  // Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'cerveja');
  // não vai add pois a chave já existe logo acima
  produtos.putIfAbsent('nome', () => 'refrigerante');
  print(produtos);

  // para atualizar o valor da chave
  produtos.update('nome', (value) => 'refrigerante');
  print(produtos);

  // Recuperando o valor
  print('Produto ${produtos['nome']}');

  produtos.forEach((key, value) {
    print('Chave: $key : $value');
  });

// Utilizar quando for fazer algum processo assyncrono dentro dele
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key} : ${entry.value}');
  }

  for (var keys in produtos.keys) {
    print('Chave: $keys');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoMapaProdutos);

  // criando um mapa dentro de um mapa, passando ele como um dos valores do map incial
  // object ou dynamic seria o mesmo
  var mapa = <String, Object>{
    'nome': 'Dalvan Rech',
    'cursos': [
      {'nome' 'Academia do Flutter', 'descricao' 'IIIIIIIIIts Flutter time'},
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de flutter do Brasil!!!'
      },
    ]
  };
}
