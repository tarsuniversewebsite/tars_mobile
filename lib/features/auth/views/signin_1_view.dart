import 'package:flutter/material.dart';
import 'package:tars_mobile/common/widgets/bankgothic_universe_text.dart';
import 'package:tars_mobile/constants/color_constants.dart';
import 'package:tars_mobile/features/auth/views/signin_2_view.dart';
import '../../../common/widgets/bottom_tars_logo.dart';
import '../../../common/widgets/rounded_elevated_button.dart';

class SigninView1 extends StatelessWidget {
  const SigninView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BankGothicUniverseText(),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, bottom: 15),
            child: Text(
              'The best place for all your learning, creating, entertainment and more.',
              style: TextStyle(
                  height: 1, fontSize: 18, color: ColorConstants.grey),
              textAlign: TextAlign.center,
            ),
          ),
          RoundedElevatedButton(
            text: 'Sign In',
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const SigninView2(),
              ));
            },
          ),
        ],
      ),
      bottomNavigationBar: const BottomTarsLogo(),
    );
  }
}
