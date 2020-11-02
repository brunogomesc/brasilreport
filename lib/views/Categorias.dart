import 'package:flutter/material.dart';
import 'OcorrenciaCadastro.dart';

class FormCategorias extends StatefulWidget {
  @override
  _FormCategoriasState createState() => _FormCategoriasState();
  String estados;
  FormCategorias(this.estados);
}

class _FormCategoriasState extends State<FormCategorias> {
  void categoria(String categoria) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FormDenuncia(widget.estados, categoria)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brasil Report"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                categoria("Queimadas");
              },
              child: Text("Queimadas"),
            ),
            RaisedButton(
              onPressed: () {
                categoria("Desmatamento");
              },
              child: Text("Desmatamneto"),
            ),
            RaisedButton(
              onPressed: () {
                categoria("PoluicaoRio");
              },
              child: Text("PoluicaoRio"),
            ),
            RaisedButton(
              onPressed: () {
                categoria("DescarteIncorreto");
              },
              child: Text("DescarteIncorreto"),
            ),
            RaisedButton(
              onPressed: () {
                categoria("Animais");
              },
              child: Text("Animais"),
            ),
            RaisedButton(
              onPressed: () {
                categoria("Alagamentos");
              },
              child: Text("Alagamentos"),
            ),
            RaisedButton(
              onPressed: () {
                categoria("Outros");
              },
              child: Text("Outros"),
            ),
          ],
        ),
      ),
    );
  }
}
