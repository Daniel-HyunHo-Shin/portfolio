import 'package:flutter/material.dart';
import 'package:portfolio/Theme/pallete.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    super.key,
    required this.aboutKey,
  });

  final GlobalKey<State<StatefulWidget>> aboutKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: MediaQuery.of(context).size.height - 60,
      key: aboutKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
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
                  child: const InkWell(
                    child: Center(
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
      ),
    );
  }
}
