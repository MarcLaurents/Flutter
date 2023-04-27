class Pessoa {
  String nome;
  String? curso;
  Pessoa(this.nome, {required this.curso});
  void imprimir() {
    print('$nome: $curso');
  }
}

void main() {
  Pessoa pessoa = Pessoa('Ana', curso: 'Tecnologia da Informação');
  pessoa.imprimir();
}
