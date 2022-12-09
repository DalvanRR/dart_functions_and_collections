void main() {
  print(somaInteiros(10, 5));

  // Função anonima é uma função que pode estar  jogada ou associada a uma variavel
  // é possivel criar uma variavel que receba uma função
  // função anonima não segue o padrão das funções habituais
  // Uma função anonima pode ser passada por parametro

  var nome = '';
  var idade = 1;
  var funcaoQualquer = () {
    print('chamou a funcao da variavel');
  };

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer.runtimeType);
  print(funcaoQualquer());

  // Isso aqui não está invocando a função pois não tem '()'
  somaInteiros;
}

// Função tem 3 partes:
// I - Tipo de retorno
// II - Nome
// III - Parametros (normais, nomeados e opcionais)

// Sem arrow
// int somaInteiros(int numero1, int numero2) {
//   return numero1 + numero2;
// }

//Com arrow // Usamos em funções simples tornando-as somente de 1 linha
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

// typedef = tipodefinido
typedef FuncaoQueRecebNome = void Function(String nome);

// Agora ao inves de passar  void Function(String nome); eu passo passar FuncaoQueRecebNome
// Que funcionará como uma espécie de apelido do nome inicial, facilitando para reaproveitar
