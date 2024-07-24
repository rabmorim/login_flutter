import 'package:flutter/material.dart';
import 'package:pratica_app/layout.dart';

void main () =>  runApp(const MeuLayout());

class MeuLayout extends StatelessWidget{
  const MeuLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Layout Básico',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const Scaffold(
        body: Layout() ,
      ),
    );
  }

}