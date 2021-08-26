import 'package:flutter/material.dart';
import 'package:inmobiliaria_caj/src/model/Embarazada.dart';
import 'package:inmobiliaria_caj/src/pages/about.dart';
import 'package:inmobiliaria_caj/src/pages/terms.dart';
import 'package:select_form_field/select_form_field.dart';

import 'Resultado.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

final List<Map<String, dynamic>> _items = [
  {
    'value': '0.5',
    'label': 'Desnutrida',
    //'icon': Icon(Icons.stop),
  },
  {
    'value': '0.4',
    'label': 'Normopeso',
    //'icon': Icon(Icons.fiber_manual_record),
    //'textStyle': TextStyle(color: Colors.red),
  },
  {
    'value': '0.3',
    'label': 'Sobrepeso',
  },
  {
    'value': '0.2',
    'label': 'Obesa',
    //'icon': Icon(Icons.grade),
  },
];

class _HomeState extends State<Home> {
  double pesoInicial = 0;
  double pesoConsultaAnterior = 0;
  double pesoConsultaActual = 0;
  double semanaCaptacion = 0;
  double semanaConsultaActual = 0;
  double estadoPeso = 0.5;
  Embarazada embarazada = Embarazada(
      pesoInicial: 0,
      pesoConsultaAnterior: 0,
      pesoConsultaActual: 0,
      semanaCaptacion: 0,
      semanaConsultaActual: 0,
      EstadoPeso: 0);

  @override
  Widget build(BuildContext context) {
    var style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 16), primary: Colors.indigo);
    var olibSytle = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
      borderRadius: BorderRadius.circular(15.0),
    );
    var borderR = OutlineInputBorder(borderRadius: BorderRadius.circular(15));
    var suffixStyle =
        TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo);

    return Scaffold(
      appBar: AppBar(
        title: Text("Curva de Peso"),
        actions: [
          IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              }),
          IconButton(
              icon: Icon(Icons.description),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Terms()),
                );
              })
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: borderR,
                    labelText: 'Peso Inicial',
                    focusedBorder: olibSytle,
                    suffixText: "Kg",
                    suffixStyle: suffixStyle),
                onChanged: (pi) => pesoInicial = double.parse(pi),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                    border: borderR,
                    labelText: 'Peso Consulta Anterior',
                    focusedBorder: olibSytle,
                    suffixText: "Kg",
                    suffixStyle: suffixStyle),
                onChanged: (pca) => pesoConsultaAnterior = double.parse(pca),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                    border: borderR,
                    labelText: 'Peso Consulata Actual',
                    focusedBorder: olibSytle,
                    suffixText: "Kg",
                    suffixStyle: suffixStyle),
                onChanged: (pca) => pesoConsultaActual = double.parse(pca),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                    border: borderR,
                    labelText: 'Semana de la Captación',
                    focusedBorder: olibSytle,
                    suffixText: "Sem",
                    suffixStyle: suffixStyle),
                onChanged: (sc) => semanaCaptacion = double.parse(sc),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                    border: borderR,
                    labelText: 'Semana de consulta Actual',
                    focusedBorder: olibSytle,
                    suffixText: "Sem",
                    suffixStyle: suffixStyle),
                onChanged: (sca) => semanaConsultaActual = double.parse(sca),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),

              SelectFormField(
                type: SelectFormFieldType.dropdown,
                // or can be dialog
                initialValue: '0.5',
                labelText: 'Estado del Peso',
                items: _items,
                onChanged: (val) => estadoPeso = double.parse(val),
                onSaved: (val) => print(val),
              )

              //no se calcula PA-PI
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              embarazada = Embarazada(
                  pesoInicial: pesoInicial,
                  pesoConsultaAnterior: pesoConsultaAnterior,
                  pesoConsultaActual: pesoConsultaActual,
                  semanaCaptacion: semanaCaptacion,
                  semanaConsultaActual: semanaConsultaActual,
                  EstadoPeso: estadoPeso);
              print(embarazada.gananciaGlobal1().toString());
              print(embarazada.debeHaberAumentado().toString());
              print(embarazada.tiene().toString());
              print(embarazada.gananciaGlobal2().toString());
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Resultado(
                          embarazada: embarazada,
                        )),
              );
            },
            child: Text("Calcular Valores"),
            style: style,
          )),
    );
  }
}
