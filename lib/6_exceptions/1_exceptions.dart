void main() {
  var idade = '24 anos';
  String? nome;

  try {
    int.parse(idade);
    nome!.toUpperCase();
  } on FormatException catch (e, s) {
    // 'e' de error. 's' de stake trace
    // com o 's' no print ele pegará o trace do erro, mostrando o local
    print(s);
  } catch (erro) {
    //print(erro);
    print('Erro ao executar');
  } finally {
    print('finally');
  }
}

// TUDO que está no try será 'escutado' 'analisado' caso haja exception ele manda ao catch, 
// podendo ser genérica ou específica
// Colocar as exceções específicas acima das genéricas
// finally para fazer qualquer ação ao final. SEMPRE será excecutado ao final, com sucesso ou não
