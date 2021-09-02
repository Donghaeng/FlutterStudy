import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<Size> _myAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _myAnimation = Tween<Size>(
        begin: Size(100, 100),
        end:  Size(120, 120)
    ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceIn)
    );

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    //-disposing the animation controller-
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations"),
      ),

      body: Center(
          child:
          AnimatedBuilder(animation: _myAnimation,
              builder: (ctx, ch) =>  Container(
                width: _myAnimation.value.width,
                height: _myAnimation.value.height,

                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage(
                          'assets/potato.jpeg',
                        )
                    )
                ),
              )
          )
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,

      floatingActionButton:
      FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          //*------Enabling the animation-----*
          _controller.forward();
        },
      ),
    );
  }
}