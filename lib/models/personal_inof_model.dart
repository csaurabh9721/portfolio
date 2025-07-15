class PersonalInfoModel {
  final String firstName;
  final String lastName;
  final String stack;
  final String aboutMe;
  final String gender;
  final String birthDate; // Format: YYYY-MM-DD
  final List<String> languages;
  final String nationality;
  final String address;
  final String mobile1;
  final String mobile2;
  final String email;
  final String linkedIn;
  final String github;
  final String freelanceStatus;
  final int experienceYears;
  final int totalProjects;

  PersonalInfoModel({
    required this.firstName,
    required this.lastName,
    required this.aboutMe,
    required this.stack,
    required this.gender,
    required this.birthDate,
    required this.languages,
    required this.nationality,
    required this.address,
    required this.mobile1,
    required this.mobile2,
    required this.email,
    required this.linkedIn,
    required this.github,
    required this.freelanceStatus,
    required this.experienceYears,
    required this.totalProjects,
  });

  int get age {
    final birth = DateTime.parse(birthDate);
    final now = DateTime.now();
    return now.year - birth.year;
  }

  String get languageList => languages.join(', ');
  String get getProjectCount =>totalProjects.toString()+"+";
  String get getExperienceYears =>experienceYears.toString()+"+";
}
