import 'package:flutter/material.dart';
import 'package:google_maps/constant/my_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  final phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 88, horizontal: 32),
            child: Column(
              children: [
                _buildIntroText(),
                const SizedBox(height: 60),
                _buildOtpTextField(context),
                const SizedBox(height: 40),
                _buildNextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          // if (formKey.currentState!.validate()) {
          //   formKey.currentState!.save();
          // }
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(110, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          backgroundColor: Colors.black,
        ),
        child: const Text(
          'Verify',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildIntroText() {
    return Column(
      children: [
        const Text(
          'Verify your phone number',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: RichText(
            text: TextSpan(
              text: 'enter your 6 digit code numbers sent to',
              style: const TextStyle(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                    text: phoneNumber,
                    style: const TextStyle(color: MyColors.blue)),
              ],
            ),
          ),
        )
      ],
    );
  }

  _buildOtpTextField(BuildContext context) {
    return PinCodeTextField(
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      appContext: context,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(6),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeColor: MyColors.blue,
        activeFillColor: MyColors.lightBlue,
        inactiveColor: MyColors.blue,
        inactiveFillColor: Colors.white,
        selectedColor: MyColors.blue,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
