import 'package:efrchat/components/custom_button.dart';
import 'package:efrchat/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 50),
              Icon(
                Icons.chat,
                size: 80,
                color: Colors.purple[800],
              ),

              const SizedBox(height: 50),

              const Text(
                "Welcome to EFREI Chat App",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 25),

              CustomTextField(
                  controller: emailTextController, 
                  hintText: 'Email', 
                  obscure: false
              ),

              const SizedBox(height: 10),

              CustomTextField(
                  controller: passwordTextController, 
                  hintText: 'Password', 
                  obscure: true
              ),

              const SizedBox(height: 10),

              CustomButton(onTap: (){}, text: "Sign Up"),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text('Already a member ?'),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Login now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],)


            ]),
          ),
        ),
      ),
    );
  }
}