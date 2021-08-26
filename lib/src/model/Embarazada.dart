class Embarazada {
  double pesoInicial;
  double pesoConsultaAnterior;
  double pesoConsultaActual;
  double semanaCaptacion;
  double semanaConsultaActual;
  double EstadoPeso;

  Embarazada({
    required this.pesoInicial,
    required this.pesoConsultaAnterior,
    required this.pesoConsultaActual,
    required this.semanaCaptacion,
    required this.semanaConsultaActual,
    required this.EstadoPeso,
  });

  double gananciaGlobal1() {
    return this.pesoConsultaActual - this.pesoInicial;
  }

  double debeHaberAumentado() {
    /*double estado;
    if (EstadoPeso == 'Desnutrida') {
      estado = 0.5;
    } else if (EstadoPeso == 'Normopeso') {
      estado = 0.4;
    } else if (EstadoPeso == 'SobrePeso') {
      estado = 0.3;
    } else{
      estado = 0.2;
    }*/

    return (this.semanaConsultaActual-this.semanaCaptacion) * this.EstadoPeso;
  }

  double tiene() {
    return debeHaberAumentado() - this.gananciaGlobal1();
  }

  double gananciaGlobal2() {
    return ((this.pesoConsultaActual - this.pesoInicial) /
        (this.semanaConsultaActual - this.semanaCaptacion));
  }

  List<String> interpretacion() {
    double gg2=this.gananciaGlobal2();
    List<String> inter=[];
    if (EstadoPeso == 'Desnutrida') {
      //2do
      if(gg2<=0.42){
        inter.add("Baja");
      }
      else if(gg2>=0.43 && gg2<=0.69){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
      //3er
      if(gg2<=0.34){
        inter.add("Baja");
      }
      else if(gg2>=0.35 && gg2<=0.61){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
    } else if (EstadoPeso == 'Normopeso') {
      //2do
      if(gg2<=0.39){
        inter.add("Baja");
      }
      else if(gg2>=0.40 && gg2<=0.66){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
      //3er
      if(gg2<=0.31){
        inter.add("Baja");
      }
      else if(gg2>=0.32 && gg2<=0.58){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
    } else if (EstadoPeso == 'SobrePeso') {
      //2do
      if(gg2<=0.34){
        inter.add("Baja");
      }
      else if(gg2>=0.35 && gg2<=0.63){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
      //3er
      if(gg2<=0.28){
        inter.add("Baja");
      }
      else if(gg2>=0.29 && gg2<=0.53){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
    } else{
      //2do
      if(gg2<=0.26){
        inter.add("Baja");
      }
      else if(gg2>=0.27 && gg2<=0.53){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
      //3er
      if(gg2<=0.23){
        inter.add("Baja");
      }
      else if(gg2>=0.24 && gg2<=0.48){
        inter.add("Moderada");
      }
      else{
        inter.add("Alta");
      }
    }

    return inter;
  }
}

