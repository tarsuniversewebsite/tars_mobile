import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const CustomGradientButton({super.key, 
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFFC3C3C3),
              Color(0xFFEDEDED),
            ],
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(child: child),
        ),
      ),
    );
  }
}
