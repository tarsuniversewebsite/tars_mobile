import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import 'package:tars_mobile/features/auth/views/phone_verification_view.dart';

import '../../../common/widgets/custom_continue_button.dart';
import '../../../common/widgets/custom_gradient_button.dart';

class EmailVerificationView extends StatefulWidget {
  final String email;
  final String phoneNumber;
  const EmailVerificationView({
    super.key,
    required this.email,
    required this.phoneNumber,
  });

  @override
  State<EmailVerificationView> createState() => _EmailVerificationViewState();
}

class _EmailVerificationViewState extends State<EmailVerificationView> {
  final _otpController = OtpFieldController();

  String hideEmail(String email) {
    // if (email.contains('@')) {
    //   setState(() {
    //     email = email + '@gmail.com';
    //   });
    // }
    String firstLetter = email.substring(0, 1);
    String domain = email.substring(email.indexOf('@'));
    String maskedMiddle = '* ' * (email.indexOf('@') - 1);
    return '$firstLetter$maskedMiddle$domain';
  }

  @override
  Widget build(BuildContext context) {
    String maskedEmail = hideEmail(widget.email);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Email verification'),
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
              maskedEmail,
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
                      text: 'Resend Code',
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
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PhoneVerificationView(
                            phoneNumber: widget.phoneNumber,
                            keyPath: 'ok',
                          ),
                        ));
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
