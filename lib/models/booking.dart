class Booking {
  String bid;
  String uid;
  String driverUid;
  String date;

  Booking({
    this.bid,
    this.uid,
    this.driverUid,
    this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'bid': bid,
      'uid': uid,
      'driverUid': driverUid,
      'date': date,
    };
  }

  factory Booking.fromMap(Map<String, dynamic> map) {
    return Booking(
      bid: map['bid'],
      uid: map['uid'],
      driverUid: map['driverUid'],
      date: map['date'],
    );
  }
}
