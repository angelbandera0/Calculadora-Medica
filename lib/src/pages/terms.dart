import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Condiciones y Términos"),
        ),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Condiciones y términos de uso:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text(
                        "Nuestro producto está desarrollado para brindar apoyo a los médicos que radican en la atención primaria y que hoy en día se les hace difícil realizar dichos cálculos debido al gran cúmulo de información y trabajo que manejan diariamente. Por lo que es nuestra tarea ofrecer este grano de arena para apoyarlos. "
                        ,style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                    SizedBox(height: 15),

                    Text("Critícamos y nos oponemos rotundamente a cualquier intento que atente contra la integridad y el buen funcionamiento del software. Deseamos que en caso de errores o problemas internos en el funcionamiento sean notificados para ser corregidos. Cualquier tipo de sugerencia o mejoras que consideren necesarias estamos abiertos a escucharlas e integrarlas en futuras versiones venideras.",
                        style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                  ]),
            )));
  }
}
