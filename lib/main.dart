import 'package:flutter/material.dart' ;
import 'package:model_testing/ui_screen.dart';



void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return testScreen() ;
  }
}
