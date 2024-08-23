import 'package:flutter/material.dart';
import 'package:health_hub/widgets/gradient_button.dart';
import 'package:health_hub/widgets/login_field.dart';
import 'package:health_hub/widgets/social_button.dart';
// ignore: depend_on_referenced_packages

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  get socialButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              SocialButton(
                iconPath: 'assets/svgs/g_logo.svg',
                label: 'Continue with Google',
                onPressed: () {
                  // Add your login logic here
                  print('Google login pressed');
                },
              ),
              const SizedBox(height: 20),
              socialButton,
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
