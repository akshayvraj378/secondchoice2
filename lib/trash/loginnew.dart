import 'package:flutter/material.dart';

class Loginpageui extends StatefulWidget {
  const Loginpageui({super.key});

  @override
  State<Loginpageui> createState() => _LoginpageuiState();
}

class _LoginpageuiState extends State<Loginpageui> {
  final loginkey = GlobalKey<FormState>();
  bool pass = false;
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white12,
        body: Form(
          key: loginkey,
          child: ListView(children: [
            Stack(children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    height: 620,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(45))),child:          Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 40),
                            child: Text('Welcome back!',
                                style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.w900)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18),
                      child: Container(

                        height: 280,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Colors.white24,
                              Colors.white30,
                              Colors.blueGrey
                            ]),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Colors.black12)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Center(
                                    child: Text('Login',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Email',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, fontSize: 16)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 19, right: 19),
                                  child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        if (!RegExp(
                                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                            .hasMatch(value)) {
                                          return "Enter a valid email address";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(prefixIcon: Icon(Icons.email_outlined),
                                          hintText: 'Enter your email')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 20),
                                  child: Text('Password',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, fontSize: 16)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 19, right: 19),
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: !pass,
                                    decoration: InputDecoration(prefixIcon: Icon(Icons.lock_clock),
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
                                        hintText: 'Enter your password'),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please confirm your password';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                              onPressed: () {
                                // Navigator.of(context).pushAndRemoveUntil(
                                //     MaterialPageRoute(
                                //       builder: (context) => ForgotPassword(),
                                //     ),
                                //         (route) => false);
                              },
                              child: Text('Forgot password')),
                          ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize:
                                  MaterialStatePropertyAll(Size(100, 40)),
                                  backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue)),
                              onPressed: () {
                                loginkey.currentState!.validate();
                                if (loginkey.currentState!.validate()) {
                                  // Navigator.pushAndRemoveUntil(context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => HomePage(),), (
                                  //         route) => false);
                                }
                              },
                              child: Text('Login')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Do not have an account?',
                          ),
                          TextButton(
                              onPressed: () {
                                // Navigator.pushAndRemoveUntil(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //       const RegistrationPage(),
                                //     ),
                                //         (route) => false);
                              },
                              child: Text('Register'))
                        ],
                      ),
                    )
                  ]),
                  )
                ]),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
