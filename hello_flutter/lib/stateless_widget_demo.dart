import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless Widget Demo',
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless 위젯 데모')),
    body: _FirstStatelessWidget(),
  )
));

class _FirstStatelessWidget extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}