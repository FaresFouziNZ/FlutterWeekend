import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/driver_user.dart';

import '../models/local_user.dart';
import 'firebase_collections.dart';

class DatabaseService {
  String uid;
  static DatabaseService _instance;
  final FirebaseCollections collections = FirebaseCollections();

  static DatabaseService get instance {
    _instance ??= DatabaseService();

    return _instance;
  }

  Future createUser({@required LocalUser user}) async {
    return await collections.users.doc(user.uid).set(user.toMap(), SetOptions(merge: true));
  }

  Future<List<DriverUser>> getAllDrivers() async {
    var snapshot = await collections.drivers.get();
    return snapshot.docs.map((doc) => DriverUser.fromMap(doc.data())).toList();
  }

  Future addDriver(DriverUser driverUser) async {
    //FIXME
    return await collections.drivers.doc(driverUser.uid).set(driverUser.toMap(), SetOptions(merge: true));
  }
}
