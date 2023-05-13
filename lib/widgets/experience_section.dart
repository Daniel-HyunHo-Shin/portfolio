import 'package:flutter/material.dart';

import '../Theme/pallete.dart';
import '../models/experience_model.dart';
import 'experience_tile.dart';

class ExperienceSection extends StatefulWidget {
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
  _ExperienceSectionState createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  Experience _selectedExperience = Experience.all;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
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
          SizedBox(
            key: widget.experienceKey,
          ),

          /// For Categories of Experience
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: _selectedExperience == Experience.all
                      ? Colors.red
                      : Colors.black,
                ),
                onPressed: () {
                  widget.filterExperiences(Experience.all);
                  setState(() {
                    _selectedExperience = Experience.all;
                  });
                },
                icon: const Icon(Icons.list, size: 30),
                label: const Text(
                  'All',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: _selectedExperience == Experience.education
                      ? Colors.red
                      : Colors.black,
                ),
                onPressed: () {
                  widget.filterExperiences(Experience.education);
                  setState(() {
                    _selectedExperience = Experience.education;
                  });
                },
                icon: const Icon(Icons.school, size: 30),
                label: const Text(
                  'Education',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: _selectedExperience == Experience.work
                      ? Colors.red
                      : Colors.black,
                ),
                onPressed: () {
                  widget.filterExperiences(Experience.work);
                  setState(() {
                    _selectedExperience = Experience.work;
                  });
                },
                icon: const Icon(Icons.work, size: 30),
                label: const Text(
                  'Work',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),

          /// Expericne Content
          Container(
            height: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                shrinkWrap: true,
                children: widget.displayedExperiences,
              ),
            ),
          )
        ],
      ),
    );
  }
}
