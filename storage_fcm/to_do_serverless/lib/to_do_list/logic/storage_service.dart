import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
static final FirebaseStorage _storage = FirebaseStorage.instance;

  static Future<String> uploadImage(File image, String taskId) async {
    final Reference storageReference = _storage.ref().child('tasks').child(taskId);
    final UploadTask uploadTask = storageReference.putFile(image);
    final snapshot = await uploadTask;
    return snapshot.ref.getDownloadURL();
  }
}