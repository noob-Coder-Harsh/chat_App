import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewMessages extends StatefulWidget {
  const NewMessages({super.key});

  @override
  State<NewMessages> createState() => _NewMessagesState();
}

class _NewMessagesState extends State<NewMessages> {
  final _messageController = TextEditingController();

  void _submitMessage() async {
    final enteredMessage = _messageController.text;
    if (enteredMessage.isEmpty) {
      return;
    }
    _messageController.clear();
    FocusScope.of(context).unfocus();

    final user = FirebaseAuth.instance.currentUser!;
    final userData = await FirebaseFirestore.instance
        .collection('user')
        .doc(user.uid)
        .get();

    FirebaseFirestore.instance.collection('chat').add({
      'text': enteredMessage,
      'createdAt': Timestamp.now(),
      'userId': user.uid,
      'username': userData.data()!['username'],
      'userImage': userData.data()!['image_Url']
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            controller: _messageController,
            decoration: const InputDecoration(labelText: 'Enter message'),
            autocorrect: true,
            textCapitalization: TextCapitalization.sentences,
          )),
          IconButton(onPressed: _submitMessage, icon: const Icon(Icons.send))
        ],
      ),
    );
  }
}
