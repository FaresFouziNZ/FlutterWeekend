class DriverUser {
  String uid;
  String name;
  bool gender;
  int age;
  String imageUrl;
  double rating;
  double price;
  String description;
  String city;
  List<dynamic> languages;
  List<dynamic> expertise;
  List<dynamic> hobbies;

  DriverUser({
    this.uid,
    this.name,
    this.gender,
    this.age,
    this.imageUrl,
    this.rating,
    this.price,
    this.description,
    this.city,
    this.languages,
    this.expertise,
    this.hobbies,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'gender': gender,
      'age': age,
      'imageUrl': imageUrl,
      'rating': rating,
      'price': price,
      'description': description,
      'city': city,
      'languages': languages,
      'expertise': expertise,
      'hobbies': hobbies,
    };
  }

  factory DriverUser.fromMap(Map<String, dynamic> map) {
    return DriverUser(
      uid: map['uid'],
      name: map['name'],
      gender: map['gender'],
      age: map['age'],
      imageUrl: map['imageUrl'],
      rating: map['rating'],
      price: map['price'],
      description: map['description'],
      city: map['city'],
      languages: map['languages'],
      expertise: map['expertise'],
      hobbies: map['hobbies'],
    );
  }
}
