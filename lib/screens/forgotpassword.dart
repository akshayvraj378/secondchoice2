import 'package:flutter/material.dart';

class Forgott extends StatefulWidget {
  const Forgott({super.key});

  @override
  State<Forgott> createState() => _ForgottState();
}

class _ForgottState extends State<Forgott> {
  final loginkey = GlobalKey<FormState>();
  bool pass = false;
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          Image(image: AssetImage('assets/images/forgot.jpg')),
          Form(
            key: loginkey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(100))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your email';
                  }
                  if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      .hasMatch(value)) {
                    return "Enter a valid email address";
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(150, 50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  loginkey.currentState!.validate();
                },
                child: Text('Reset password')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_rounded),
                TextButton(onPressed: () {}, child: Text('back to Logi'))
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}
