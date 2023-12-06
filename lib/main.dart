import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secondchoice2/settings/settin.dart';
import 'package:secondchoice2/trash/Home2chat.dart';
import 'package:secondchoice2/trash/Regi.dart';
import 'package:secondchoice2/trash/boknow.dart';
import 'package:secondchoice2/trash/booking page';
import 'package:secondchoice2/trash/login.dart';
import 'package:secondchoice2/trash/profile%20pagr.dart';
import 'package:secondchoice2/trash/tabbar.dart';
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  MaterialApp(home: MyHomePaget(),);
  }
}
