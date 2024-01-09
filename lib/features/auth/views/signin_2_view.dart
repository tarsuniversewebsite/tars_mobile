import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import 'package:tars_mobile/features/auth/views/signin_3_view.dart';
import '../../../common/widgets/bottom_tars_logo.dart';
import 'password_reset_view.dart';
import 'signup_view.dart';

class SigninView2 extends StatefulWidget {
  const SigninView2({super.key});

  @override
  State<SigninView2> createState() => _SigninView2State();
}

class _SigninView2State extends State<SigninView2> {
  final _inputController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _inputController.dispose();
  }

  String? validateEmailOrPhone(String? value) {
    if (value!.trim().isEmpty) {
      return 'Please enter a valid email or phone number';
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
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) =>
          SigninView3(emailOrPhone: _inputController.text.trim()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                controller: _inputController,
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
                  contentPadding: const EdgeInsets.only(top: 0, left: 10),
                  hintStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(top: 0),
                    icon: Icon(
                      CupertinoIcons.arrow_right_circle,
                      color: ColorConstants.grey,
                    ),
                    onPressed: submit,
                  ),
                  hintText: 'Email or Phone Number',
                ),
              ),
              // -----------------------------------------------------------------------------
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PasswordResetView(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: ColorConstants.blue,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft),
                  child: const Text('Forgot Password?'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SignupView(),
                  ));
                },
                style: TextButton.styleFrom(
                    foregroundColor: ColorConstants.blue,
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: const Text('Create Your Account'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomTarsLogo(),
    );
  }
}
