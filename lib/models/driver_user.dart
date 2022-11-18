class Driver {
  String uid;
  String name;
  bool gender;
  int age;
  String imageUrl;
  double rating;
  double price;
  String description;
  String city;
  List<String> languages;
  List<String> expertise;

  Driver({
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
  });

  Map<String, dynamic> toMap() {
    return {
      'kid': uid,
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
    };
  }

  factory Driver.fromMap(Map<String, dynamic> map) {
    return Driver(
      uid: map['kid'],
      name: map['name'],
      gender: map['gender'],
      age: map['age'],
      imageUrl: map['imageUrl'],
      rating: map['rating'],
      price: map['price'],
      description: map['description'],
      city: map['city'],
      languages: List.from(map['languages']),
      expertise: List.from(map['expertise']),
    );
  }
}
