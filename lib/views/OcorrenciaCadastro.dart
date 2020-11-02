import 'package:brasilreport/main.dart';
import 'package:flutter/material.dart';
import '../models/Usuarios.dart';
import 'Estados.dart';
import 'Categorias.dart';
import '../models/SaveDatabase.dart';

class FormDenuncia extends StatefulWidget {
  @override
  _FormDenunciaState createState() => _FormDenunciaState();

  String estado;
  String categorias;
  FormDenuncia(this.estado, this.categorias);

  static String tag = 'form-page';
}

class _FormDenunciaState extends State<FormDenuncia> {
  //static String tag = 'form-page';
  final _formKey = GlobalKey<FormState>();

  Usuario usuario = Usuario();

  onSubmit() {
    if (_formKey.currentState.validate()) {
      print('Chamando método post');
      SaveDatabase().postBase(usuario);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => TelaAps(),
        ),
      );
    } else {
      print('Erro no formulário');
    }
  }

  String requerido(String valor) {
    if (valor == "") {
      return "Este campo é obrigatório";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    usuario.ocorrencia = FormDenuncia("", "").categorias;
    usuario.estado = FormDenuncia("", "").estado;
    return Scaffold(
      appBar: AppBar(
        title: Text("Brasil Report"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            tooltip: "Enviar",
            onPressed: onSubmit,
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            ListTile(
              title: TextFormField(
                onChanged: (valor) => usuario.nome = valor,
                validator: requerido,
                decoration: InputDecoration(
                    hintText: usuario.nome.isEmpty ? "Nome" : usuario.nome),
              ),
            ),
            Container(
              child: RaisedButton.icon(
                color: Colors.white,
                splashColor: Colors.green,
                icon: Icon(Icons.map),
                label: Text(usuario.estado),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SegundaRota()));
                },
              ),
            ),
            ListTile(
              title: TextFormField(
                onChanged: (valor) => usuario.municipio = valor,
                validator: requerido,
                decoration: InputDecoration(
                    hintText: usuario.municipio.isEmpty
                        ? "Municipio"
                        : usuario.municipio),
              ),
            ),
            ListTile(
              title: TextFormField(
                maxLines: null,
                onChanged: (valor) => usuario.pontoDeReferencia = valor,
                validator: requerido,
                decoration: InputDecoration(
                    hintText: usuario.pontoDeReferencia.isEmpty
                        ? "Ponto de Referência"
                        : usuario.pontoDeReferencia),
              ),
            ),
            Container(
              child: RaisedButton.icon(
                color: Colors.white,
                splashColor: Colors.green,
                icon: Icon(Icons.security),
                label: Text(usuario.ocorrencia),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FormCategorias(usuario.estado)));
                },
              ),
            ),
            ListTile(
              title: TextFormField(
                maxLines: null,
                onChanged: (valor) => usuario.denuncia = valor,
                validator: requerido,
                decoration: InputDecoration(
                    hintText: usuario.denuncia.isEmpty
                        ? "Denúncia"
                        : usuario.denuncia),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
