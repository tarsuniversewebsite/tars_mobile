import 'package:flutter/material.dart';
import 'package:phone_input/phone_input_package.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import '../../../common/widgets/bottom_tars_logo.dart';
import '../../../common/widgets/custom_continue_button.dart';
import '../../../common/widgets/custom_gradient_button.dart';
import '../../../core/utils.dart';
import 'phone_verification_view.dart';

class PasswordResetPhoneView extends StatefulWidget {
  const PasswordResetPhoneView({
    super.key,
  });

  @override
  State<PasswordResetPhoneView> createState() => _PasswordResetPhoneViewState();
}

class _PasswordResetPhoneViewState extends State<PasswordResetPhoneView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final _phoneController =
      PhoneController(const PhoneNumber(isoCode: IsoCode.BD, nsn: ''));

  @override
  void dispose() {
    super.dispose();
    _phoneController.dispose();
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
                'Confirm Your Phone',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Enter your phone number to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.grey,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                child: showPhoneInput(_phoneController),
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
                          if (_phoneController.value!.international.isEmpty) {
                            return;
                          }
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PhoneVerificationView(
                                  phoneNumber:
                                      _phoneController.value!.international,
                                  keyPath: 'reset'),
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
