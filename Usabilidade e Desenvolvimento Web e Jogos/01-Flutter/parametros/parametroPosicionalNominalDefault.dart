class Pessoa {
  String nome;
  String? curso;
  Pessoa(this.nome, {this.curso = 'Banco de Dados'});
  void imprimir() {
    print('$nome: $curso');
  }
}

void main() {
  Pessoa pessoa = Pessoa('Ana', curso: 'Tecnologia da Informação');
  pessoa.imprimir();
  pessoa = Pessoa('Bruna');a
  pessoa.imprimir();
}
