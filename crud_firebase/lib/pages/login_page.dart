//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/material.dart';

//class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);

  //@override
  //_LoginPageState createState() => _LoginPageState();
//}

//class _LoginPageState extends State<LoginPage> {
  //final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  //Future<void> _login() async {
    //try {
      //await _auth.signInWithEmailAndPassword(
        //email: _emailController.text.trim(),
        //password: _passwordController.text.trim(),
      //);
      //Navigator.pushReplacementNamed(context, '/home');
    //} catch (e) {
      //ScaffoldMessenger.of(context).showSnackBar(
        //SnackBar(content: Text('Error: ${e.toString()}')),
      //);
    //}
  //}

  //@override
  //Widget build(BuildContext context) {
    //return Scaffold(
      //appBar: AppBar(title: const Text('Login')),
      //body: Padding(
        //padding: const EdgeInsets.all(16.0),
        //child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //children: [
            //TextField(
              //controller: _emailController,
              //decoration: const InputDecoration(labelText: 'Email'),
            //),
            //TextField(
              //controller: _passwordController,
              //decoration: const InputDecoration(labelText: 'Password'),
              //obscureText: true,
            //),
            //const SizedBox(height: 20),
            //ElevatedButton(
              //onPressed: _login,
              //child: const Text('Login'),
            //),
          //],
        //),
      //),
    //);
  //}
//}
