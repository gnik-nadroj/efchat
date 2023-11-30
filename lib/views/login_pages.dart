import 'package:efrchat/components/custom_button.dart';
import 'package:efrchat/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  obscure: false),
              const SizedBox(height: 10),
              CustomTextField(
                  controller: passwordTextController,
                  hintText: 'Password',
                  obscure: true),
              const SizedBox(height: 10),
              CustomButton(onTap: () {}, text: "Sign In"),
              const SizedBox(height: 25),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member ?'),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
