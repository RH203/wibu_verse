import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:wibu_verse/core/common/widget/button/app_button.dart';
import 'package:wibu_verse/core/utils/helper_assets/helper_assets.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _imageExpanded(size),
            Column(
              children: [
                _buildTitle(),
                const Text(
                  "Stream station anime app of century to always entertain you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 120),
                  child: AppButton(
                    title: "Lets start",
                    onTap: () => context.go('/sign-in'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded _imageExpanded(Size size) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: size.height * 0.05,
            left: size.width * 0.1,
            child: ClipOval(
              child: Image.asset(
                HelperAssets.aotOnboarding,
                height: size.width * 0.3,
                width: size.width * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.1,
            right: size.width * 0.1,
            child: ClipOval(
              child: Image.asset(
                HelperAssets.bocchiOnboarding,
                height: size.width * 0.25,
                width: size.width * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.24,
            left: size.width * 0.08,
            child: ClipOval(
              child: Image.asset(
                HelperAssets.frirenOnboarding,
                height: size.width * 0.3,
                width: size.width * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.45,
            right: size.width * 0.15,
            child: ClipOval(
              child: Image.asset(
                HelperAssets.fullmetalOnboarding,
                height: size.width * 0.3,
                width: size.width * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.48,
            right: size.width * 0.7,
            child: ClipOval(
              child: Image.asset(
                HelperAssets.haikyuuOnboarding,
                height: size.width * 0.25,
                width: size.width * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.3,
            right: size.width * 0.2,
            child: ClipOval(
              child: Image.asset(
                HelperAssets.kimetsuOnboarding,
                height: size.width * 0.25,
                width: size.width * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  RichText _buildTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: "Welcome to ",
        style: TextStyle(
          fontSize: 35,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: 'Wibu',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: 'Verse',
            style: TextStyle(
              color: Colors.red,
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
