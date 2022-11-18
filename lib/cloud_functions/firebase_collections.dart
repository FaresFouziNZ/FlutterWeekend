import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCollections {
  static final _databaseRef = FirebaseFirestore.instance;
  final CollectionReference users = _databaseRef.collection('users');
  final CollectionReference khawi = _databaseRef.collection('khawi');
  final CollectionReference bookings = _databaseRef.collection('bookings');
  // final CollectionReference users = _databaseRef.collection('users');

}
