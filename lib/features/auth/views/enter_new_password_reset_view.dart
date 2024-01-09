import 'package:flutter/material.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import 'package:tars_mobile/features/auth/widgets/auth_field.dart';

import '../../../common/widgets/bottom_tars_logo.dart';
import '../../../common/widgets/custom_continue_button.dart';
import '../../../common/widgets/custom_gradient_button.dart';
import 'auth_success_view.dart';

class EnterNewPasswordView extends StatefulWidget {
  const EnterNewPasswordView({
    super.key,
  });

  @override
  State<EnterNewPasswordView> createState() => _EnterNewPasswordViewState();
}

class _EnterNewPasswordViewState extends State<EnterNewPasswordView> {
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomTarsLogo(),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Password Recovery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Enter new password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, right: 60, left: 60, bottom: 30),
                child: Column(
                  children: [
                    AuthField(
                      controller: _passwordController,
                      text: 'New Password',
                      validationLoigic: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    AuthField(
                      controller: _passwordConfirmController,
                      text: 'Confirm New Password',
                      validationLoigic: (value) {
                        if (value!.trim().isEmpty) {
                          return 'mismatching passowrds found';
                        }
                        return null;
                      },
                    ),
                  ],
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
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomContinueButton(
                        text: 'Continue',
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  AuthSuccessView(text: 'Password Reset'),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
