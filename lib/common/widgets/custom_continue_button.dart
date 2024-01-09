import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class CustomContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomContinueButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          color: ColorConstants.black,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: ColorConstants.white),
          )),
        ),
      ),
    );
  }
}
