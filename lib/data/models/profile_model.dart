class ProfileModel {
  final String name;
  final String profession;
  final String bio;
  final String email;
  final String phone;
  final String location;
  final List<Education> education;
  final List<String> skills;
  final List<String> hobbies;

  ProfileModel({
    required this.name,
    required this.profession,
    required this.bio,
    required this.email,
    required this.phone,
    required this.location,
    required this.education,
    required this.skills,
    required this.hobbies,
  });
}

class Education {
  final String institution;
  final String degree;
  final String period;

  Education({
    required this.institution,
    required this.degree,
    required this.period,
  });
}
