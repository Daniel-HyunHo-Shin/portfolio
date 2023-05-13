import 'package:flutter/material.dart';
import 'package:portfolio/Theme/pallete.dart';

import '../models/experience_model.dart';
import '../widgets/about_me_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/experience_tile.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  /// We will use GlobalKey to scroll to certain widget
  final aboutKey = GlobalKey();

  final experienceKey = GlobalKey();

  final projectsKey = GlobalKey();

  final contactKey = GlobalKey();

  List<ExperienceTile> allExperiences = [
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'KAUST PhD Student, Statistics',
      subtitle:
          'Voluntarily withdrew from a doctoral program to pursue alternative career opportunities',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'Korean Nation Open University, Statistics',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'Maimi University, Economics',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'University of Seoul, Economics',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'University of Seoul, Economics',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.work,
    ),
    // Add more ExperienceTile here...
  ];

  late List<ExperienceTile> displayedExperiences;

  @override
  void initState() {
    super.initState();
    displayedExperiences = List.from(allExperiences);
  }

  void filterExperiences(Experience category) {
    setState(() {
      if (category == Experience.all) {
        displayedExperiences = List.from(allExperiences);
      } else {
        displayedExperiences = allExperiences
            .where((experience) => experience.category == category)
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daniel HyunHo Shin',
          style: Pallete.heading4,
        ),
        toolbarHeight: 60, // Set this height
        actions: [
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                aboutKey.currentContext!,
                duration: const Duration(milliseconds: 400),
              );
            },
            child: const Text('About'),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                experienceKey.currentContext!,
                duration: const Duration(milliseconds: 400),
              );
            },
            child: const Text(
              'Experience',
              style: Pallete.paragraphM,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Projects',
              style: Pallete.paragraphM,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Contact',
              style: Pallete.paragraphM,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// About me Section
            ///
            AboutMeSection(aboutKey: aboutKey),

            const SizedBox(
              height: 60,
            ),

            /// Experience Section
            ///
            ExperienceSection(
              experienceKey: experienceKey,
              filterExperiences: filterExperiences,
              displayedExperiences: displayedExperiences,
            ),
          ],
        ),
      ),
    );
  }
}
