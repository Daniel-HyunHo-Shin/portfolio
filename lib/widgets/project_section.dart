import 'package:flutter/material.dart';

import '../Theme/pallete.dart';
import 'project_tile.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1280),
        child: Column(
          children: [
            const Text('Experience', style: Pallete.heading2),
            GridView.count(
              physics:
                  const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              children: const [
                ProjectTile(
                  assetPath: 'assets/images/portfolio.png',
                  explanation: 'Chat App with Firebase',
                  title: 'Project 2: Chat App (2023)',
                ),
                ProjectTile(
                  assetPath: 'assets/images/portfolio.png',
                  explanation: 'I made this website with flutter',
                  title: 'Project 1: Portfolio website (2023)',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
