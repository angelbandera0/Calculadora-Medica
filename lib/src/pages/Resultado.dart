import 'package:flutter/material.dart';
import 'package:inmobiliaria_caj/src/model/Embarazada.dart';

class Resultado extends StatelessWidget {
  final Embarazada embarazada;

  Resultado({required this.embarazada}) {}

  @override
  Widget build(BuildContext context) {
    List<String> inter= embarazada.interpretacion();
    return Scaffold(
        appBar: AppBar(
          title: Text("Resultados"),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Informacíon",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(height:20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ganacia Global 1:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          Text(embarazada.gananciaGlobal1().toStringAsFixed(2),style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Debe de Haber Aumentado:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          Text(embarazada.debeHaberAumentado().toStringAsFixed(2),style: TextStyle(fontSize: 16,)),
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tiene:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          Text(embarazada.tiene().toStringAsFixed(2),style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ganancia Global 2:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          Text(embarazada.gananciaGlobal2().toStringAsFixed(2),style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("2do Trimestre:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          Text(inter[0],style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("3er Trimestre:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          Text(inter[1],style: TextStyle(fontSize: 16)),
                        ],
                      ),

                ]))));
  }
}
