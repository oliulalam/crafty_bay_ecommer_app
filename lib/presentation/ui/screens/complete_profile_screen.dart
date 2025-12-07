import 'package:crafty_bay/presentation/ui/screens/home_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() =>
      _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 34),
              AppLogoWidget(),
              SizedBox(height: 24),
              Text(
                "Complete Profile",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 8),
              Text(
                "Get started with us with your details ",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
              ),

              SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: 'First name'),
              ),
              SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: 'Last name'),
              ),
              SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'Mobile'),
              ),
              SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: 'City'),
              ),
              SizedBox(height: 16),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(hintText: 'Shipping address'),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: () {
                _onTapHomeScreenButton();
              }, child: Text("Complete")),
            ],
          ),
        ),
      ),
    );
  }
  //===============================================

  void _onTapHomeScreenButton(){
    Get.off(()=> HomeScreen());
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
