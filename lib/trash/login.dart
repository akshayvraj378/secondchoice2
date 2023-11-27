import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login12 extends StatefulWidget {
  const Login12({super.key});

  @override
  State<Login12> createState() => _Login12State();
}

class _Login12State extends State<Login12> {
  final loginkey = GlobalKey<FormState>();
  bool pass = false;
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: loginkey,
        child: ListView(children: [
          Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/pic5.png'))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 190),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(17.0),
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
                              if (!RegExp(
                                  r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                  .hasMatch(value)) {
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: !pass,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.redAccent,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      pass = !pass;
                                    });
                                  },
                                  icon: Icon(pass
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                filled: true,
                                fillColor: Colors.grey,
                                hintText: 'Enter the password',
                                hintStyle: TextStyle(color: Colors.black87),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please confirm your password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 350,
                            height: 65,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent),
                                onPressed: () {
                                  if (loginkey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text('success')));
                                  }
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.white70),
                                )),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Do not have an account ? ',
                              style: TextStyle(color: Colors.black87)),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Regis(),
                                    ));
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    ]),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}