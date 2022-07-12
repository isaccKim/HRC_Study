import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/todo.dart';

class DatabaseService {
  CollectionReference todosCollection =
      FirebaseFirestore.instance.collection('Todos');

  Future createNewTodo(String title) async {
    return await todosCollection.add({
      "title": title,
      "isComplet": false,
    });
  }

  Future completTask(uid) async {
    await todosCollection.doc(uid).update({"isComplet": true});
  }

  Future unCompletTask(uid) async {
    await todosCollection.doc(uid).update({"isComplet": false});
  }

  Future removeTodo(uid) async {
    await todosCollection.doc(uid).delete();
  }

  List<Todo> todoFromFirestore(QuerySnapshot snapshot) {
    if (snapshot != null) {
      return snapshot.docs.map((e) {
        return Todo(
          isComplet: (e.data() as dynamic)["isComplet"],
          title: (e.data() as dynamic)["title"],
          uid: e.id,
        );
      }).toList();
    } else {
      return snapshot.docs.map((e) {
        return Todo(
          isComplet: (e.data() as dynamic)["isComplet"],
          title: (e.data() as dynamic)["title"],
          uid: e.id,
        );
      }).toList();
    }
  }

  Stream<List<Todo>> listTodos() {
    return todosCollection.snapshots().map(todoFromFirestore);
  }
}