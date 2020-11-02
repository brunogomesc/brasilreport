import 'dart:math';

import 'package:flutter/foundation.dart';

class Ocorrencia {
  final String id;
  final String nome;
  final String estado;
  final String cidade;
  final String descricao;
  final String categoria;
  final String date;

  Ocorrencia({
    @required this.id,
    @required this.nome,
    @required this.estado,
    @required this.cidade,
    @required this.descricao,
    @required this.categoria,
    @required this.date,
  });

  List<Ocorrencia> ocorrencia;

  List<Ocorrencia> get ocorrencias => [...ocorrencia];

  void addOcorrencia(Ocorrencia newOcorrencia) {
    ocorrencia.add(
      Ocorrencia(
        id: Random().nextDouble().toString(),
        nome: newOcorrencia.nome,
        estado: newOcorrencia.estado,
        cidade: newOcorrencia.cidade,
        descricao: newOcorrencia.descricao,
        categoria: newOcorrencia.categoria,
        date: newOcorrencia.date,
      ),
    );
  }
}
