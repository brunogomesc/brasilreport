import 'package:flutter/material.dart';
import '../models/Ocorrencia.dart';

class OcorrenciaList extends StatelessWidget {
  final List<Ocorrencia> ocorrencias;

  OcorrenciaList({this.ocorrencias});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 700,
        child: ListView.builder(
          itemCount: ocorrencias.length,
          itemBuilder: (ctx, index) {
            //final tr = ocorrencias[index];
            return Card(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            ocorrencias[index].nome,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${ocorrencias[index].categoria} - ${ocorrencias[index].estado}, ${ocorrencias[index].cidade}\n',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[450],
                            ),
                          ),
                          Text(
                            '${ocorrencias[index].date} - ${ocorrencias[index].descricao}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
