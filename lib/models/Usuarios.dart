class Usuario {
  String nome = '';
  String municipio = '';
  String pontoDeReferencia = '';
  String denuncia = '';
  String ocorrencia = '';
  String estado = '';
}

class Estados {
  final int id;
  final String nomeEstado;
  final int estado;

  Estados(this.id, this.nomeEstado, this.estado);
}
