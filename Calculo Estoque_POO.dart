//Implemente uma classe chamada “Produto” que possua atributos para armazenar o nome, o preço e a quantidade em estoque. 
//Adicione métodos para calcular o valor total em estoque e verificar se o produto está disponível.

void main (){
  Produto produto = Produto('Produto A', 13.25, 0);
  
  produto.calculoEstoque();
  
}

class Produto{
  String? _nome;
  double? _preco;
  double? _quantidade;
  double? _valorEstoque;
  
  Produto(this._nome, this._preco, this._quantidade);

void calculoEstoque(){
  _valorEstoque = _quantidade! * _preco!;
  
  exibirEstoque();
  
  if(_quantidade!<1){
    print('O produto $_nome está indisponível.');
  }
}
  void exibirEstoque(){
    print('No estoque há $_quantidade unidades do produto $_nome, custando $_preco cada. O valor total do estoque é de $_valorEstoque');
  }
  
}
