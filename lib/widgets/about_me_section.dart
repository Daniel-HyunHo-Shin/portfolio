import 'package:flutter/material.dart';
import 'package:portfolio/Theme/pallete.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    super.key,
    required this.aboutKey,
    required this.experienceKey,
  });

  final GlobalKey<State<StatefulWidget>> aboutKey;
  final GlobalKey experienceKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 60,
      key: aboutKey,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, I am Shin.',
                style: Pallete.heading1,
              ),
              const Text(
                'A Creative Programmer',
                style: Pallete.heading1,
              ),
              const Text(
                'Based In Seoul',
                style: Pallete.heading1,
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  const Text(
                    'UX',
                    style: Pallete.heading5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/icons/diamond-symbol.png',
                      width: 20,
                    ),
                  ),
                  const Text(
                    'Flutter',
                    style: Pallete.heading5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/icons/diamond-symbol.png',
                      width: 20,
                    ),
                  ),
                  const Text(
                    'AI',
                    style: Pallete.heading5,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 48,
                width: 138,
                child: InkWell(
                  onTap: () {
                    Scrollable.ensureVisible(
                      experienceKey.currentContext!,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Explore',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              color: Colors.red,
              width: 100,
              height: 500,
            ),
          ),
        ],
      ),
    );
  }
}
