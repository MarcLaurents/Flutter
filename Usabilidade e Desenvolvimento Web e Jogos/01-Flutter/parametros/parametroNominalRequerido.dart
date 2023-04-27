class Pessoa {
  String nome;
  String curso;
  Pessoa({required this.nome, required this.curso});
  void imprimir() {
    print('$nome: $curso');
  }
}

void main() {
  Pessoa pessoa = Pessoa(nome: 'Ana', curso: 'Tecnologia da Informação');
  pessoa.imprimir();
}
