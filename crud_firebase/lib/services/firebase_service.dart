import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  QuerySnapshot querySnapshot = await db.collection('people').get();
  for (var doc in querySnapshot.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {'name': data['name']};

    people.add(doc.data());
  }

  return people;
}

Future<void> addpeople(String name) async {
  await db.collection("people").add({"name": name});
}

Future<void> updatepeople(String uid, String newName) async {
  await db.collection("people").doc(uid).set({"name": newName});
}
