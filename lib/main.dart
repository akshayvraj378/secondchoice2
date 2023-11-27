
import 'package:flutter/material.dart';
import 'package:secondchoice2/screens/forgotpassword.dart';
import 'package:secondchoice2/screens/settings.dart';
main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Forgott(),);
  }
}
