import 'package:brasilreport/models/Usuarios.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class SaveDatabase {
  static const url = 'https://webapibrasilreport.azurewebsites.net/api/Report/';
  void postBase(Usuario dados) async {
    try {
      await http.post(
        url,
        body: json.encode({
          "categorias": dados.ocorrencia.toString(),
          "estado": dados.estado.toString(),
          "nome": dados.nome.toString(),
          "municipio": dados.municipio.toString(),
          "ponto_de_referencia": dados.pontoDeReferencia.toString(),
          "denuncia": dados.denuncia.toString(),
          "horario_denuncia":
              DateFormat('d-M-y HH:mm:ss').format(DateTime.now()).toString(),
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print('post concluido');
    } catch (error) {
      print("Erro gerado: ${error.toString()}");
    }
  }

  Future<List> getBase() async {
    try {
      List<String> ocorrencias = [];
      final response = await http.get(url);
      print(json.decode(response.toString()));
      ocorrencias = json.decode(response.toString());
      return ocorrencias;
    } catch (error) {
      print('erro gerado: $error');
    }
  }
}
