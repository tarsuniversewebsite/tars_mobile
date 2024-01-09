import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import 'package:tars_mobile/features/auth/views/auth_success_view.dart';

import '../../../common/widgets/custom_continue_button.dart';
import '../../../common/widgets/custom_gradient_button.dart';
import 'enter_new_password_reset_view.dart';

class PhoneVerificationView extends StatefulWidget {
  final String phoneNumber;
  final String keyPath;
  const PhoneVerificationView({
    super.key,
    required this.phoneNumber,
    required this.keyPath,
  });

  @override
  State<PhoneVerificationView> createState() => _PhoneVerificationViewState();
}

class _PhoneVerificationViewState extends State<PhoneVerificationView> {
  final _otpController = OtpFieldController();

  String showLastThreeLetters(String input) {
    int length = input.length;
    String lastThreeLetters = input.substring(length - 3);
    String maskedString = '*' * (length - 3) + lastThreeLetters;
    return maskedString;
  }

  @override
  Widget build(BuildContext context) {
    String maskedString = showLastThreeLetters(widget.phoneNumber);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Phone verification'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter the code sent to',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: ColorConstants.grey,
              ),
            ),
            Text(
              maskedString,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: ColorConstants.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
                right: 80,
                left: 80,
              ),
              child: OTPTextField(
                isDense: true,
                controller: _otpController,
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                spaceBetween: 20,
                fieldStyle: FieldStyle.underline,
                outlineBorderRadius: 15,
                otpFieldStyle: OtpFieldStyle(
                  disabledBorderColor: ColorConstants.black,
                  borderColor: ColorConstants.black,
                  focusBorderColor: ColorConstants.blue,
                ),
                style: const TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Text.rich(
                TextSpan(
                  text: 'Didn\'t recieve code? ',
                  children: [
                    TextSpan(
                      onEnter: (event) {},
                      text: 'Resend',
                      style: TextStyle(
                        color: ColorConstants.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  Expanded(
                    child: CustomGradientButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),

                    //     LargeElevatedButton(
                    //   title: 'Cancel',
                    //   function: () {},
                    //   bgColor: ColorConstants.grey,
                    //   textColor: ColorConstants.black,
                    // ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomContinueButton(
                      text: 'Continue',
                      onPressed: () {
                        widget.keyPath == 'reset'
                            ? Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EnterNewPasswordView(),
                                ),
                                (route) => false)
                            : Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const AuthSuccessView(
                                      text: 'Account Creation Successful'),
                                ),
                                (route) => false);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
