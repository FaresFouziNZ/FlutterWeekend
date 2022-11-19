class Booking {
  String bid;
  String uid;
  String driverUid;
  String date;
  int hours;

  Booking({
    this.bid,
    this.uid,
    this.driverUid,
    this.date,
    this.hours,
  });

  Map<String, dynamic> toMap() {
    return {
      'bid': bid,
      'uid': uid,
      'driverUid': driverUid,
      'date': date,
      'hours': hours,
    };
  }

  factory Booking.fromMap(Map<String, dynamic> map) {
    return Booking(
      bid: map['bid'],
      uid: map['uid'],
      driverUid: map['driverUid'],
      date: map['date'],
      hours: map['hours'],
    );
  }
}
