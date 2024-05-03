import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                showError
                    ? Text(
                        'Usuario o contraseña incorrectos',
                        style: TextStyle(color: Colors.red),
                      )
                    : Container(),
                ElevatedButton(
                  onPressed: () {
                    String enteredUser = userController.text;
                    String enteredPassword = passwordController.text;

                    if (enteredUser == 'Joaquin' && enteredPassword == 'Joaquin123') {
                      print('Successful login');
                      context.go("/home");
                    } else {
                      setState(() {
                        showError = true;
                      });
                      print('Failed login');
                    }
                  },
                  child: const Text('login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
