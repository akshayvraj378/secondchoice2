import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    // Trigger animation on page load
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  final loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Your existing decoration
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                // Your existing form
                child: Column(
                  // Your existing column children
                  children: [
                    FadeTransition(
                      opacity: _opacityAnimation,
                      child: TextFormField(
                        // Your existing TextFormField
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeTransition(
                      opacity: _opacityAnimation,
                      child: TextFormField(
                        // Your existing TextFormField
                      ),
                    ),
                    SizedBox(height: 20),
                    ScaleTransition(
                      scale: _animationController.drive(
                        Tween<double>(
                          begin: 0.0,
                          end: 1.0,
                        ).chain(
                          CurveTween(curve: Curves.easeInOut),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(100, 40),
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          if (loginKey.currentState!.validate()) {
                            // Perform login logic here
                          }
                        },
                        child: Text('Login'),
                      ),
                    ),
                    // Other existing widgets
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
