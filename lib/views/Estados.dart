import 'package:flutter/material.dart';
import 'Categorias.dart';

class SegundaRota extends StatefulWidget {
  @override
  _SegundaRotaState createState() => _SegundaRotaState();
}

class _SegundaRotaState extends State<SegundaRota> {
  void estado(String estado) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => FormCategorias(estado)));
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
                estado("Acre");
              },
              child: Text("Acre"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Alagoas");
              },
              child: Text("Alagoas"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Amazonas");
              },
              child: Text("Amazonas"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Amapá");
              },
              child: Text("Amapá"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Bahia");
              },
              child: Text("Bahia"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Ceará");
              },
              child: Text("Ceará"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Distrito Federal");
              },
              child: Text("Distrito Federal"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Espírito Santo");
              },
              child: Text("Espírito Santo"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Goiás");
              },
              child: Text("Goiás"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Maranhão");
              },
              child: Text("Maranhão"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Minas Gerais");
              },
              child: Text("Minas Gerais"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Mato Grosso do Sul");
              },
              child: Text("Mato Grosso do Sul"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Mato Grosso");
              },
              child: Text("Mato Grosso"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Pará");
              },
              child: Text("Pará"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Paraíba");
              },
              child: Text("Paraíba"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Pernanbuco");
              },
              child: Text("Pernanbuco"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Piauí");
              },
              child: Text("Piauí"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Paraná");
              },
              child: Text("Paraná"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Rio de Janeiro");
              },
              child: Text("Rio de Janeiro"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Rio Grande do Norte");
              },
              child: Text("Rio Grande do Norte"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Rondônia");
              },
              child: Text("Rondônia"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Roraima");
              },
              child: Text("Roraima"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Rio Grande do Sul");
              },
              child: Text("Rio Grande do Sul"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Santa Catarina");
              },
              child: Text("Santa Catarina"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Sergipe");
              },
              child: Text("Sergipe"),
            ),
            RaisedButton(
              onPressed: () {
                estado("São Paulo");
              },
              child: Text("São Paulo"),
            ),
            RaisedButton(
              onPressed: () {
                estado("Tocantins");
              },
              child: Text("Tocantins"),
            ),
          ],
        ),
      ),
    );
  }
}
