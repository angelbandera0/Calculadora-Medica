import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: CustomPaint(
        painter: _HeaderDiagonal() ,
      )
    );
  }
}

class _HeaderDiagonal extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //properties
    paint.color= Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth= 2;

    final path = new Path();
    //dibujar
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
    throw UnimplementedError();
  }

}

class HeaderTria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: CustomPaint(
          painter: _HeaderTrian() ,
        )
    );
  }
}

class _HeaderTrian extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //properties
    paint.color= Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth= 2;

    final path = new Path();
    //dibujar
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    path.lineTo(size.width*0.5, size.height*0.33);
    path.lineTo(size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
    throw UnimplementedError();
  }

}


class HeaderCurva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: CustomPaint(
          painter: _HeaderCurva() ,
        )
    );
  }
}

class _HeaderCurva extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //properties
    paint.color= Color(0xff615AAB);
    //paint.style = PaintingStyle.stroke;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth= 25;

    final path = new Path();
    //dibujar
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.30, size.width*0.50, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.20, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
    throw UnimplementedError();
  }

}
