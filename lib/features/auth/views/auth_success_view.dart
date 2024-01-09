import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tars_mobile/features/onboarding/views/onboarding_view.dart';

class AuthSuccessView extends StatelessWidget {
  final String text;
  const AuthSuccessView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const OnboardingView(),
            ),
            (route) => false);
      }),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      //   title: const Text('Phone verification'),
      // ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                CupertinoIcons.checkmark_circle_fill,
                color: Colors.green.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
