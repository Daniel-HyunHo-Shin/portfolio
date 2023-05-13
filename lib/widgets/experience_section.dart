import 'package:flutter/material.dart';
import 'package:portfolio/models/experience_model.dart';

import '../Theme/pallete.dart';
import 'experience_tile.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
    required this.experienceKey,
    required this.filterExperiences,
    required this.displayedExperiences,
  });

  final GlobalKey experienceKey;

  final void Function(Experience experience) filterExperiences;

  final List<ExperienceTile> displayedExperiences;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 60,
      key: experienceKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.school,
                size: 40,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Experience', style: Pallete.heading2),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Work & Education',
                style: Pallete.subHeading,
              ),
              const SizedBox(
                height: 12,
              ),

              /// For Categories of Experience
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton.icon(
                    onPressed: () => filterExperiences(Experience.all),
                    icon: const Icon(Icons.list),
                    label: const Text('All'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  OutlinedButton.icon(
                    onPressed: () => filterExperiences(Experience.education),
                    icon: const Icon(Icons.school),
                    label: const Text('Education'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  OutlinedButton.icon(
                    onPressed: () => filterExperiences(Experience.work),
                    icon: const Icon(Icons.work),
                    label: const Text('Work'),
                  ),
                ],
              ),

              /// Expericne Content
              ///
              Expanded(
                  child: ListView(
                children: displayedExperiences,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
