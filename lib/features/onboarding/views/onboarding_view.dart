import 'package:flutter/material.dart';
import 'package:tars_mobile/constants/png_constants.dart';
import 'package:tars_mobile/features/auth/views/signin_1_view.dart';

import '../../../common/widgets/bankgothic_universe_text.dart';
import '../../../constants/color_constants.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => const SigninView1(),
      //   ),
      // ),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              OpacityAnimationWidget(
                child: Image.asset(PngConstants.tarsLogo),
              ),
              OpacityAnimationWidget(
                child: BankGothicUniverseText(color: ColorConstants.white),
              ),
              const Expanded(
                flex: 5,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OpacityAnimationWidget extends StatefulWidget {
  final Widget child;

  const OpacityAnimationWidget({Key? key, required this.child})
      : super(key: key);

  @override
  OpacityAnimationWidgetState createState() => OpacityAnimationWidgetState();
}

class OpacityAnimationWidgetState extends State<OpacityAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 1),
    // )..repeat(reverse: true);
    // _opacityAnimation =
    //     Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    // -------------------------------------------------------------------------
    // _controller = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 1),
    // );

    // _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
    //   ..addListener(() {
    //     if (_controller.status == AnimationStatus.completed) {
    //       Navigator.of(context).pushReplacement(
    //         MaterialPageRoute(
    //           builder: (context) => const SigninView1(),
    //         ),
    //       );
    //     }
    //   });

    // _controller.forward();
    // -------------------------------------------------------------------------
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const SigninView1(),
          ),
        );
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: widget.child,
        );
      },
    );
  }
}
