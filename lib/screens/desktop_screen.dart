import 'package:flutter/material.dart';
import 'package:portfolio/Theme/pallete.dart';

import '../models/experience_model.dart';
import '../widgets/about_me_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/experience_tile.dart';
import '../widgets/project_section.dart';

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

  final List<ExperienceTile> allExperiences = [
    const ExperienceTile(
      icon: Icon(Icons.business),
      title: 'Manager at English Fella',
      subtitle:
          'Managed operations at the English Fella language institute, overseeing educational program design and implementation. Collaborated with team members to create a conducive learning environment for students. Location: Cebu, Central Visayas, Philippines.',
      category: Experience.work,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'PhD Student, Statistics - KAUST',
      subtitle:
          'Pursued advanced research in statistical models and methodologies. Decided to withdraw to explore career opportunities more aligned with my professional goals.',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'Bachelor of Science, Statistics - Korea National Open University',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.business),
      title: 'First Lieutenant at Republic of Korea Air Force',
      subtitle:
          'Served as First Lieutenant in the Republic of Korea Air Force, leading and managing personnel in various operations. Developed strong leadership and teamwork skills.',
      category: Experience.work,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'Bachelor of Science, Economics - University of Seoul',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.business),
      title: 'Summer Research Student at Miami University',
      subtitle:
          'Participated in a short-term research program at Miami University during the summer. Gained hands-on experience in conducting academic research.',
      category: Experience.work,
    ),
    const ExperienceTile(
      icon: Icon(Icons.school),
      title: 'Bachelor of Science, Economics - Miami University',
      subtitle: 'Logjfksngjisng fnodsgfos gosjo',
      category: Experience.education,
    ),
    const ExperienceTile(
      icon: Icon(Icons.business),
      title: 'Intern at Korea Trade Insurance Corporation (Ksure)',
      subtitle:
          'Completed a two-month internship at Ksure, gaining industry experience and learning about trade insurance operations.',
      category: Experience.work,
    ),
  ];
  // It will be initialized at initstate()

  late List<ExperienceTile> displayedExperiences;

  @override
  void initState() {
    super.initState();
    displayedExperiences = List.from(allExperiences);
  }

  /// When the function is called, it will change displayedExperience to selected Exeperience
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
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xff075f8e),
            Color(0xff66e5ec),
            Color(0xfffd5538),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          title: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Daniel HyunHo Shin',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
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
              child: Text(
                'About',
                style: Pallete.paragraphM
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  experienceKey.currentContext!,
                  duration: const Duration(milliseconds: 400),
                );
              },
              child: Text(
                'Experience',
                style: Pallete.paragraphM
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Projects',
                style: Pallete.paragraphM
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Contact',
                style: Pallete.paragraphM
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(width: 30),
          ],
        ),
        body: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            shrinkWrap: true,
            children: [
              /// About me Section
              Align(
                alignment: Alignment.center,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1280),
                  child: AboutMeSection(
                    aboutKey: aboutKey,
                    experienceKey: experienceKey,
                  ),
                ),
              ),

              const SizedBox(
                height: 60,
              ),

              /// Experience Section
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1280),
                  child: ExperienceSection(
                    experienceKey: experienceKey,
                    filterExperiences: filterExperiences,
                    displayedExperiences: displayedExperiences,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),

              /// Project Section
              const ProjectSection(),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
