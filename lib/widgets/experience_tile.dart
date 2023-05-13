import 'package:flutter/material.dart';

import '../Theme/pallete.dart';
import '../models/experience_model.dart';

class ExperienceTile extends StatelessWidget {
  const ExperienceTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.category});

  final Icon icon;
  final String title;
  final String subtitle;
  final Experience category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.top,
      leading: icon,
      title: Text(
        title,
        style: Pallete.heading5,
      ),
      dense: false,
      subtitle: Text(
        subtitle,
        style: Pallete.paragraphL,
      ),
    );
  }
}
