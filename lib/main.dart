
import 'package:flutter/material.dart';
import 'package:secondchoice2/screens/forgotpassword.dart';
import 'package:secondchoice2/screens/settings.dart';
import 'package:secondchoice2/trash/Regi.dart';
import 'package:secondchoice2/trash/home.dart';
import 'package:secondchoice2/trash/homedemo.dart';
import 'package:secondchoice2/trash/logi.dart';
import 'package:secondchoice2/trash/registration.dart';
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
    return const MaterialApp(home: HomePages(),);
  }
}
