import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 82,),
          AppLogoWidget(),
          SizedBox(height: 24,),
          Text("Welcome Back", style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 8,),
          Text("Please enter your email address", style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.black54
          ),
          ),

          SizedBox(height: 16,),
          TextFormField(

          )

        ],
      ),
    );
  }
}
