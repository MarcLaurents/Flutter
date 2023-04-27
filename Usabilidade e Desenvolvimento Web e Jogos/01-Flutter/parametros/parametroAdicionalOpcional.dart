class Pessoa {
  String nome;
  String? curso;
  Pessoa(this.nome, [this.curso]);
  void imprimir() {
    print('$nome: $curso');
  }
}

void main() {
  Pessoa pessoa = Pessoa('Ana', 'Tecnologia da Informação');
  pessoa.imprimir();
  pessoa = Pessoa('Bruna');
  pessoa.imprimir();
}
