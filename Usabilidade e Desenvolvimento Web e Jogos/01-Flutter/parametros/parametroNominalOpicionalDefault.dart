class Pessoa {
  String? nome;
  String? curso;
  Pessoa({this.nome, this.curso = 'Banco de Dados'});
  void imprimir() {
    print('$nome: $curso');
  }
}

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.imprimir();
  pessoa = Pessoa(nome: 'Ana', curso: 'Tecnologia da Informação');
  pessoa.imprimir();
  pessoa = Pessoa(nome: 'Bruna');
  pessoa.imprimir();
  pessoa = Pessoa(curso: 'Tecnologia da Informação');
  pessoa.imprimir();
}
