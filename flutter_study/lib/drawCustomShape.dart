import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class DrawTriangleShape extends CustomPainter {

  late Paint painter;

  DrawTriangleShape() {

    painter = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;


  }

  @override
  void paint(Canvas canvas, Size size) {

    var path = Path();

    path.moveTo(size.width/1, 0);
    path.lineTo(0, size.height/2);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Custom Triangle Shape in Flutter App'),
            ),
            body: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CustomPaint(
                          size: Size(18, 18),
                          painter: DrawTriangleShape()
                      ),
                    ],
                  ),
                  Container(
                    width: 90,
                    height: 120,
                    color: Colors.black,
                  )
                ],
              ),
            )));
  }
}