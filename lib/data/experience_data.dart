import 'package:saurabh_chauhan_portfolio/models/experience_model.dart';

class ExperienceData {
  final List<ExperienceModel> experienceList = [
    ExperienceModel(
      companyName: 'JIL Information Technology (Jaypee Group)',
      duration: 'Sept 2023 – Present',
      designation: 'Application Development',
      skills: [
        'Flutter',
        'Kotlin',
        'Spring Boot',
        'Dart',
        'Java',
        'MySQL',
        'Figma',
      ],
      description:"Leading the architecture and development of scalable, cross-platform mobile applications in a microservices-based ecosystem. Architecting and delivering production-grade Flutter frontends using Clean Architecture, BLoC, and modular principles to ensure testability, maintainability, and separation of concerns. Orchestrating integration with secure, loosely coupled Spring Boot microservices backed by MySQL, with RESTful API communication, token-based authentication, and robust error handling."

    +"Collaborating closely with cross-functional teams while mentoring junior developers, conducting code reviews, and driving architectural decisions across services. Implementing comprehensive testing strategies (unit, widget, integration), setting up CI/CD pipelines, and managing deployments to Play Store, App Store, and Web. Maintaining high engineering standards through Git-based workflows, performance tuning, and agile delivery processes.",
    ),
    ExperienceModel(
      companyName: 'WebAppsSol Private Limited',
      duration: 'Aug 2021 – August 2023',
      designation: 'Flutter Mobile App Development',
      skills: [
        'Flutter',
        'Dart',
        'Java',
        'Firebase',
        'REST API',
        'Git',
        "Github"
      ],
      description:"Spearheaded the development of scalable, cross-platform mobile applications using Flutter. Architected projects with Clean Architecture, leveraging both MVC and MVVM patterns based on use case complexity. Utilized Provider and GetX for efficient, reactive state management. Minimized third-party dependencies by building custom API integrations with secure offline-first support. Delivered visually polished, high-performance UIs optimized for Android, iOS, and web. Ensured code quality with automated testing and CI pipelines, while collaborating in Agile teams using Git, code reviews, and design sprints."
    ),
  ];
}
