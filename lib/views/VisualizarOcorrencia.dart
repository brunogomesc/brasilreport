import 'package:brasilreport/models/Ocorrencia.dart';
import 'package:flutter/material.dart';
import 'package:brasilreport/views/OcorrenciaList.dart';
import '../models/OcorrenciaModels.dart';
//import 'OcorrenciaList.dart';

String textoButton = 'Todas as categorias';
int valorCategoria;

class VisualizarOcorrencia extends StatefulWidget {
  @override
  _VisualizarOcorrenciaState createState() => _VisualizarOcorrenciaState();
}

enum Categorias {
  TodasOpcoes,
  Queimadas,
  Desmatamento,
  PoluicaoRio,
  DescarteIncorreto,
  Animais,
  Alagamentos,
  Outros,
}

class _VisualizarOcorrenciaState extends State<VisualizarOcorrencia> {
  List<Ocorrencia> ocorrenciasFinais = listaOcorrencia;
  void validaOpcaoSelecionada(int opcao) {
    if (valorCategoria == 1) {
      ocorrenciasFinais = listaOcorrencia;
    } else if (opcao == 2) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) => catego.categoria.contains('Queimadas'))
          .toList();
      ocorrenciasFinais = listTemp;
    } else if (opcao == 3) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) => catego.categoria.contains('Desmatamento'))
          .toList();
      ocorrenciasFinais = listTemp;
    } else if (opcao == 4) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) => catego.categoria.contains('Poluição nos rios'))
          .toList();
      ocorrenciasFinais = listTemp;
    } else if (opcao == 5) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) =>
              catego.categoria.contains('Descarte incorreto de materiais'))
          .toList();
      ocorrenciasFinais = listTemp;
    } else if (opcao == 6) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) => catego.categoria.contains('Tráfico de Animais'))
          .toList();
      ocorrenciasFinais = listTemp;
    } else if (opcao == 7) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) => catego.categoria.contains('Alagamentos'))
          .toList();
      ocorrenciasFinais = listTemp;
    } else if (opcao == 8) {
      List<Ocorrencia> listTemp = listaOcorrencia
          .where((catego) => catego.categoria.contains('Outros'))
          .toList();
      ocorrenciasFinais = listTemp;
    }
  }

  Future<void> _listarClassificacao() async {
    switch (await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            'Categorias das ocorrências',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.TodasOpcoes),
              },
              child: Text(
                'Todas as categorias',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.Queimadas),
              },
              child: Text(
                'Queimadas',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.Desmatamento),
              },
              child: Text(
                'Desmatamento',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.PoluicaoRio),
              },
              child: Text(
                'Porluição nos rios',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.DescarteIncorreto),
              },
              child: Text(
                'Descarte incorreto de materiais',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.Animais),
              },
              child: Text(
                'Tráfico de Animais',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.Alagamentos),
              },
              child: Text(
                'Alagamentos',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => {
                Navigator.pop(context, Categorias.Outros),
              },
              child: Text(
                'Outros',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    )) {
      case Categorias.TodasOpcoes:
        setState(() {
          textoButton = 'Todas as categorias';
          valorCategoria = 1;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.Queimadas:
        setState(() {
          textoButton = 'Queimadas';
          valorCategoria = 2;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.Desmatamento:
        setState(() {
          textoButton = 'Desmatamento';
          valorCategoria = 3;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.PoluicaoRio:
        setState(() {
          textoButton = 'Poluição nos rios';
          valorCategoria = 4;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.DescarteIncorreto:
        setState(() {
          textoButton = 'Descarte incorreto de materiais';
          valorCategoria = 5;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.Animais:
        setState(() {
          textoButton = 'Tráfico de Animais';
          valorCategoria = 6;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.Alagamentos:
        setState(() {
          textoButton = 'Alagamentos';
          valorCategoria = 7;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;

      case Categorias.Outros:
        setState(() {
          textoButton = 'Outros';
          valorCategoria = 8;
          validaOpcaoSelecionada(valorCategoria);
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Ocorrencia> ocorrencias = ocorrenciasFinais;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 241, 236, 100),
      appBar: AppBar(
        title: Text('Visualização das Ocorrências'),
        backgroundColor: Color.fromRGBO(183, 223, 105, 100),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 20, 120, 10),
              child: RaisedButton(
                padding: EdgeInsets.all(20),
                color: Color.fromRGBO(158, 235, 226, 100),
                onPressed: () => {_listarClassificacao()},
                child: Text(textoButton),
              ),
            ),
            Container(
              child: OcorrenciaList(
                ocorrencias: ocorrencias,
              ),
              //Text('Ocorrencias'),
            ),
          ],
        ),
      ),
    );
  }
}
