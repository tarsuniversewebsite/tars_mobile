import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phone_input/phone_input_package.dart';
import 'package:tars_mobile/common/widgets/large_elevated_button.dart';
import 'package:tars_mobile/constants/color_constants.dart';

import '../../../common/widgets/bottom_tars_logo.dart';
import '../../../core/utils.dart';
import '../../terms/views/privacy_policy_view.dart';
import '../../terms/views/terms_conditions_view.dart';
import '../widgets/auth_category_field.dart';
import '../widgets/auth_field.dart';
import 'email_verification_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController =
      PhoneController(const PhoneNumber(isoCode: IsoCode.BD, nsn: ''));
  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => EmailVerificationView(
          email: _emailController.text,
          phoneNumber: _phoneController.value!.international,
        ),
      ));
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Your Account'),
      ),
      bottomNavigationBar: const BottomTarsLogo(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                AuthField(
                  controller: _firstNameController,
                  text: 'First Name',
                  validationLoigic: (value) {
                    if (value!.trim().isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                AuthField(
                  controller: _lastNameController,
                  text: 'Last Name',
                  validationLoigic: (value) {
                    if (value!.trim().isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                AuthField(
                  controller: _usernameController,
                  text: 'Username',
                  validationLoigic: (value) {
                    if (value!.trim().isEmpty) {
                      return 'Please enter an username';
                    }
                    return null;
                  },
                ),
                const AuthCategoryField(),
                AuthField(
                  controller: _emailController,
                  text: 'Email',
                  validationLoigic: (value) {
                    if (!value!.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    if (value.trim().isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 9.0),
                  child: showPhoneInput(_phoneController),
                ),
                AuthField(
                  controller: _passwordController,
                  text: 'Create Password',
                  validationLoigic: (value) {
                    if (value!.trim().isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                AuthField(
                  controller: _confirmPasswordController,
                  text: 'Confirm Password',
                  validationLoigic: (value) {
                    if (value!.trim().isEmpty) {
                      return 'mismatching passowrds found';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  enabled: false,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstants.grey),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
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
                      fontSize: 14,
                    ),
                    suffixIcon: IconButton(
                      padding: const EdgeInsets.only(top: 0),
                      icon: Icon(
                        CupertinoIcons.question_circle_fill,
                        color: ColorConstants.blue,
                      ),
                      onPressed: () {},
                    ),
                    hintText: 'Upload Your Legal Document',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.grey,
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.cloud_upload,
                              color: ColorConstants.grey,
                            ),
                            Text(
                              'Upload',
                              style: TextStyle(
                                color: ColorConstants.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                      Text.rich(
                        TextSpan(
                          text: 'I agree to the ',
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TermsConditionsView(),
                                      ),
                                    ),
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                color: ColorConstants.blue,
                              ),
                            ),
                            const TextSpan(
                              text: ' and ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PrivacyPolicyView(),
                                      ),
                                    ),
                              text: 'Privacy \nPolicy.',
                              style: TextStyle(
                                color: ColorConstants.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: LargeElevatedButton(
                    title: 'Next',
                    function: submit,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    children: [
                      TextSpan(
                        onEnter: (event) {},
                        text: 'Sign In',
                        style: TextStyle(
                          color: ColorConstants.blue,
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
