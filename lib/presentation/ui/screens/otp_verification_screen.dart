import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 82),
              AppLogoWidget(),
              SizedBox(height: 24),
              Text(
                "Enter OTP Code",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 8),
              Text(
                "A 4 digit OTP has been sent to email",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
              ),

              SizedBox(height: 16),
              PinCodeTextField(
                length: 6,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.green,
                  inactiveFillColor: Colors.white,
                  inactiveColor: AppColors.themeColor,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                controller: _otpTEController,
                onCompleted: (v) {
                  print("Completed");
                },
                appContext: context,
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: Text("Next")),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  text: 'This code will expire in ',
                  children: [
                    TextSpan(
                      text: '120s',
                      style: TextStyle(color: AppColors.themeColor),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),
              
              TextButton(
                  onPressed: (){},
                  child: Text("Resend Code")
              ),

              //==============================================================
            ],
          ),
        ),
      ),
    );
  }
  //===============================================

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
