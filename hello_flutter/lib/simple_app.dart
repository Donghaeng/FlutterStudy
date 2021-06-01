import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'Hello Flutter',
    home: Scaffold(
      appBar: AppBar(title: IconButton(icon: Icon(Icons.access_alarm))),
      body: Text('Hello World'),
    )));
