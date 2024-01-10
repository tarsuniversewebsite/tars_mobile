//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import '../../../common/widgets/bottom_tars_logo.dart';
import '../../dashboard/views/dashboard_view.dart';
import 'password_reset_view.dart';
import 'signup_view.dart';

class SigninView3 extends StatefulWidget {
  final String emailOrPhone;
  const SigninView3({super.key, required this.emailOrPhone});

  @override
  State<SigninView3> createState() => _SigninView3State();
}

class _SigninView3State extends State<SigninView3> {
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

  String? validatePassword(String? value) {
    if (value!.trim().isEmpty) {
      return 'Please enter a valid password';
    }
    return null;
  }

  void submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => DashboardView(),
          ),
          (route) => false);
    } else {
      return;
    }
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
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                enabled: false,
                initialValue: widget.emailOrPhone,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.grey),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(top: 0, left: 10),
                  hintStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  hintText: 'Email or Phone Number',
                ),
              ),
              TextFormField(
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                controller: _passwordController,
                validator: (value) => validatePassword(value),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.grey),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
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
                  hintText: 'Password',
                ),
              ),
              Transform.translate(
                offset: const Offset(-10, 0),
                child: Row(
                  children: [
                    Checkbox(
                      visualDensity: VisualDensity.compact,
                      value: false,
                      onChanged: (bool? value) {
                        // setState(() {
                        //   keepMeSignedIn = value ?? false;
                        // });
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   keepMeSignedIn = !keepMeSignedIn;
                        // });
                      },
                      child: const Text('Keep me signed in'),
                    ),
                  ],
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
