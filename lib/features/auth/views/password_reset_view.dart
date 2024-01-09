import 'package:flutter/material.dart';
import 'package:tars_mobile/constants/color_constants.dart';

import '../../../common/widgets/bottom_tars_logo.dart';
import '../../../common/widgets/custom_continue_button.dart';
import '../../../common/widgets/custom_gradient_button.dart';
import 'password_reset_phone_view.dart';

class PasswordResetView extends StatefulWidget {
  const PasswordResetView({
    super.key,
  });

  @override
  State<PasswordResetView> createState() => _PasswordResetViewState();
}

class _PasswordResetViewState extends State<PasswordResetView> {
  // final _otpController = OtpFieldController();
  final _emailController = TextEditingController();
  final _characterController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _characterController.dispose();
  }

  String? validateEmailOrPhone(String? value) {
    if (value!.trim().isEmpty) {
      return 'Please enter a valid email or phone number';
    }
    return null;
  }

  String? validateCharacter(String? value) {
    if (value!.trim().isEmpty) {
      return 'Invalid characters';
    }
    return null;
  }

  void submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
    } else {
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PasswordResetPhoneView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomTarsLogo(),
      body: Form(
        key: _formKey,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Reset Your Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Enter your email address to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 60, left: 60),
                  child: Column(
                    children: [
                      TextFormField(
                        onTapOutside: (event) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        controller: _emailController,
                        validator: (value) => validateEmailOrPhone(value),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorConstants.grey),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.only(top: 0, left: 10),
                          hintStyle: const TextStyle(
                            fontSize: 14,
                          ),
                          hintText: 'Email Address',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onTapOutside: (event) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        controller: _characterController,
                        validator: (value) => validateCharacter(value),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorConstants.grey),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.only(top: 0, left: 10),
                          hintStyle: const TextStyle(
                            fontSize: 14,
                          ),
                          hintText: 'Type the characters in the image',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.grey,
                        width: 75,
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.refresh,
                                  color: ColorConstants.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'New Code',
                                    style:
                                        TextStyle(color: ColorConstants.blue),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.volume_up,
                                  color: ColorConstants.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Vision Impaired',
                                    style:
                                        TextStyle(color: ColorConstants.blue),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     top: 60.0,
                //     right: 80,
                //     left: 80,
                //   ),
                //   child: OTPTextField(
                //     isDense: true,
                //     controller: _otpController,
                //     length: 4,
                //     width: MediaQuery.of(context).size.width,
                //     textFieldAlignment: MainAxisAlignment.spaceAround,
                //     fieldWidth: 45,
                //     spaceBetween: 20,
                //     fieldStyle: FieldStyle.underline,
                //     outlineBorderRadius: 15,
                //     otpFieldStyle: OtpFieldStyle(
                //       disabledBorderColor: ColorConstants.black,
                //       borderColor: ColorConstants.black,
                //       focusBorderColor: ColorConstants.blue,
                //     ),
                //     style: const TextStyle(fontSize: 17),
                //     onChanged: (pin) {
                //       print("Changed: " + pin);
                //     },
                //     onCompleted: (pin) {
                //       print("Completed: " + pin);
                //     },
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 30, bottom: 20),
                //   child: Text.rich(
                //     TextSpan(
                //       text: 'Didn\'t recieve code? ',
                //       children: [
                //         TextSpan(
                //           onEnter: (event) {},
                //           text: 'Resend Code',
                //           style: TextStyle(
                //             color: ColorConstants.blue,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

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
                          onPressed: submit,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
