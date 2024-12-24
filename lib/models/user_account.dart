class UserAccount {
  int? id; // Optional, for primary key
  String email;
  String password;
  String? username;
  String? petname;
  String? breed;
  String? age;

  UserAccount({
    this.id,
    required this.email,
    required this.password,
    this.username,
    this.petname,
    this.breed,
    this.age,
  });

  // Convert a UserAccount into a Map. The Map is used for storing data in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id, // The ID is optional, but we include it if it's provided.
      'email': email,
      'password': password,
      'username': username,
      'petname': petname,
      'breed': breed,
      'age': age,
    };
  }

  // Convert a Map into a UserAccount. This is used when fetching data from the database.
  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map['id'],
      email: map['email'],
      password: map['password'],
      username: map['username'],
      petname: map['petname'],
      breed: map['breed'],
      age: map['age'],
    );
  }
}
