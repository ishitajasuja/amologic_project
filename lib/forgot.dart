import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class forgotPass extends StatefulWidget {
  const forgotPass({super.key});

  @override
  State<forgotPass> createState() => _forgotPassState();
}

TextEditingController _emailController = TextEditingController();

class _forgotPassState extends State<forgotPass> {
  reset() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Enter your email"),
              ),
              SizedBox(height: 20),
              
             
              ElevatedButton(
                onPressed: () => {reset()},
                child: Text('Send link'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
