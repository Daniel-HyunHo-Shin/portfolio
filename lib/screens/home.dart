import 'package:flutter/widgets.dart';
import 'package:portfolio/screens/desktop_screen.dart';
import 'package:portfolio/screens/mobile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return DesktopScreen();
        } else {
          return const MobileScreen();
        }
      },
    );
  }
}
