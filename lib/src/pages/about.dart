import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Acerca de:"),
        ),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/img/icon.png"),
                      width:  (h.height)*0.2,
                      height: (h.height)*0.2,
                    ),
                    Text("Curva de Peso",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,color: Colors.indigo)),
                    SizedBox(height: 40),
                    Text("Desarrollado por:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text("Angel Ernesto Hernández Bandera",
                        style: TextStyle(fontSize: 16)),
                    Text("angelbandera0@gmail.com",style: TextStyle(fontSize: 16,),),
                    Text("+53 58682295",style: TextStyle(fontSize: 16,),),
                    SizedBox(height: 40),
                    Text("En Colaboración con:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text("Dra. Eliannys Villaurrutia Enríquez",
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 40),
                    Text("Versión:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text("V1.0.0",
                        style: TextStyle(fontSize: 16)),

                    SizedBox(height: 40),
                    Text("Todos los derechos reservados.",
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 10),
                    Text("2021",
                        style: TextStyle(fontSize: 16)),
                  ]),
            )));
  }
}
