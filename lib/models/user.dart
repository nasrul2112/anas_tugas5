class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Anas Nasrulloh",
      username: "anasnlh",
      email: "2006065@itg.ac.id",
      profilePhoto:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-389WzAn325Ac1klPwqeUVBlifPHrooJaaOtD9K4OXfGRht5y99mkoTyYRjtU1n1-iqI&usqp=CAU",
      phoneNumber: "0838621797876",
    );
  }
}