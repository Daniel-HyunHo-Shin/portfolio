import 'package:flutter/material.dart';

import '../models/experience_model.dart';
import '../widgets/experience_tile.dart';

List<ExperienceTile> allExperiences = [
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
