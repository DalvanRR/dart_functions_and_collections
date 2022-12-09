void main() {
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');

  somaDoublesObrigatorios(numero1: 5.2, numero2: 10.2);

  print('Chamada com parametro default ${somaDoublesDefault()}');

// Nesse caso, se vier o parametro ele o usa
// Se não vier é 0
  print('Chamada com parametro default ${somaDoublesDefault(numero1: 5)}');

  // Parametro opcional
  // Pode ser vazio, com um ou os dois valores de parametros
  // Não preciso passar, mas se passar devem estar na ordem correta
  // diferente do nomeado
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 1);

  parametrosNormaisComNomeados(1, nome: 'Dalvan', idade: 24);

  // Aqui seria 1  obrigatório e 2 opcionais
  parametrosNormaisComNomeados2(1, 'Dalvan', 24);
}

// Parametros obrigatórios por default
int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

// Parametros nomeados
// parametros nomeados sao nullables por default
// parametros nomeados podem ser promovidos para non-null com checagem de null
// não precisam ser passados na ordem certa, diferente dos parametros obrigatórios

double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

// Parametros nomeados podem ser obrigatórios usando o required
double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 10, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
