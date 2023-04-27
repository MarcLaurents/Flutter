class Pessoa {
  String? nome;
  String? curso;
  Pessoa({this.nome, this.curso});
  void imprimir() {
    print('$nome: $curso');
  }
}

void main() {
  Pessoa pessoa = Pessoa(nome: 'Ana', curso: 'Tecnologia da Informação');
  pessoa.imprimir();
  pessoa = Pessoa(nome: 'Bruna');
  pessoa.imprimir();
}
