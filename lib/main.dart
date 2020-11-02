//import 'package:brasilreport/views/OcorrenciaList.dart';
import 'package:flutter/material.dart';
import 'package:brasilreport/views/VisualizarOcorrencia.dart';
import 'package:brasilreport/views/OcorrenciaCadastro.dart';

main() => runApp(TelaAps());

class TelaAps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //função para chamar a tela de histórico
  void _selectedPageVisualizarOcorrencia(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => VisualizarOcorrencia(),
      ),
    );
  }

  void _selectedPageCadastrarOcorrencia(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => FormDenuncia("", ""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 241, 236, 100),
      appBar: AppBar(
        title: Text('Teste da APS'),
        backgroundColor: Color.fromRGBO(183, 223, 105, 100),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 300,
                width: 300,
                child: Image.asset('lib/assets/images/BrasilReport.png'),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 100, 100, 40),
                child: RaisedButton(
                  padding: EdgeInsets.all(20),
                  color: Color.fromRGBO(158, 235, 226, 100),
                  onPressed: () => {_selectedPageVisualizarOcorrencia(context)},
                  child: Text(
                    'Visualizar Ocorrência',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(47, 62, 108, 100),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 50, 100, 80),
                child: RaisedButton(
                  padding: EdgeInsets.all(20),
                  color: Color.fromRGBO(158, 235, 226, 100),
                  onPressed: () => {_selectedPageCadastrarOcorrencia(context)},
                  child: Text(
                    'Registrar Ocorrência',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(47, 62, 108, 100),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
