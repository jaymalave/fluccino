import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FetchCoffeeData {
  CollectionReference coffees =
      FirebaseFirestore.instance.collection('coffees');
  List<dynamic> coffeeList = [];

  Future<List<dynamic>> getCoffees() async {
    await coffees.get().then((value) => {
          coffeeList = value.docs,
        });
    return coffeeList.toList();
  }
}
