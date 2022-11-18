class Trip {
  String kid;
  String uid;
  String city;
  String startTime;
  String endTime;
  String startDate;
  String endDate;

  Trip({
    this.kid,
    this.uid,
    this.city,
    this.startTime,
    this.endTime,
    this.startDate,
    this.endDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'kid': kid,
      'uid': uid,
      'city': city,
      'startTime': startTime,
      'endTime': endTime,
      'startDate': startDate,
      'endDate': endDate,
    };
  }

  factory Trip.fromMap(Map<String, dynamic> map) {
    return Trip(
      kid: map['kid'],
      uid: map['uid'],
      city: map['city'],
      startTime: map['startTime'],
      endTime: map['endTime'],
      startDate: map['startDate'],
      endDate: map['endDate'],
    );
  }
}
