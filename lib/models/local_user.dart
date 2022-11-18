class LocalUser {
  String uid;
  String displayName;
  String email;
  String photoURL;

  LocalUser({this.uid, this.displayName, this.email, this.photoURL});
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'photoURL': photoURL,
    };
  }

  factory LocalUser.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return LocalUser(
      uid: map['uid'],
      displayName: map['displayName'],
      email: map['email'],
      photoURL: map['photoURL'],
    );
  }
}
