import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1D6CF3), Color(0xff19D2FE)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              const Icon(CupertinoIcons.location, color: Colors.white),
              const SizedBox(width: 10),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'HO CHI MINH CITY',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(CupertinoIcons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
        ),
      ),
    );
  }
}
