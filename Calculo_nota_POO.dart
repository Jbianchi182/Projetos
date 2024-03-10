// Implemente uma classe chamada “Aluno” que possua atributos para armazenar o nome, a matrícula e as notas de um aluno. 
// Adicione métodos para calcular a média das notas e verificar a situação do aluno (aprovado ou reprovado).

void main (){
  
  Endereco enderecoAluno = Endereco('Rua blink', '182', '44', 'San Diego', 'California', 'EUA', '182-182');
  Aluno infoAluno = Aluno('Fulano', '123ABC', '182B', 8, 4, enderecoAluno,);
  
  infoAluno.calculoNota();
  
}
class Endereco{
  String? _logradouro;
  String? _numero;
  String? _complemento;
  String? _cidade;
  String? _estado;
  String? _pais;
  String? _cep;
  
  Endereco(this._logradouro, this._numero, this._complemento, this._cidade, this._estado, this._pais, this._cep);
  
  void exibirEndereco (){
    print('$_logradouro, $_numero, AP $_complemento, $_cidade/$_estado, $_pais CEP $_cep');
  }
}

class Aluno{
  String? _nome;
  String? _matricula;
  String? _serie;
  double? _nota1;
  double? _nota2;
  Endereco endereco;
  double? _mediafinal;
  
  Aluno(this._nome, this._matricula, this._serie, this._nota1, this._nota2, this.endereco);
  
  void exibirAluno (){
    print('Aluno $_nome, Serie $_serie');
  }
  
  void calculoNota (){
    _mediafinal = (_nota1! + _nota2!)/2;
    
    exibirmedia();
    
    if(_mediafinal! < 6){
      print('Você foi reprovado. Tente novamente.');
    }
    else
    {
      print('Você foi aprovado! Parabéns!!');
    }
 }
  void exibirmedia(){
    print('A media do aluno $_nome com matricula $_matricula na série $_serie é de $_mediafinal.');
  }
}
