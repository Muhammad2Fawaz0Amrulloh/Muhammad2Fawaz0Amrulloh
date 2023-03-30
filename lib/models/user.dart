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
      name: "Muhammad Fawaz Amrulloh",
      username: "fawaz",
      email: "fawaz@email.com",
      profilePhoto:
          "https://images.pexels.com/photos/8164381/pexels-photo-8164381.jpeg",
      phoneNumber: "085123456789",
    );
  }
}
