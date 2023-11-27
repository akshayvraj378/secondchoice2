import 'package:flutter/material.dart';

class Forgott extends StatefulWidget {
  const Forgott({super.key});

  @override
  State<Forgott> createState() => _ForgottState();
}

class _ForgottState extends State<Forgott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          Image(image: AssetImage('assets/images/forgot.jpg')),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your Email', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(150, 50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {},
                child: Text('Reset password')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_rounded),
                TextButton(onPressed: () {}, child: Text('back to Login'))
              ],
            ),
          )
        ]),
      ]),
    );
  }
}
