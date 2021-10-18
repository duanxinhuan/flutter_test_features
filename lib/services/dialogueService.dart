import 'package:flutter/material.dart';

class DialogueService{
  // this is a dialogue service to reuse dialogue every now and then.
  static DialogueService instance = DialogueService();

  Future<int> showMyDialogue(BuildContext context){
    return showDialog<int>(
        context: context,
        builder: (context) =>  AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop(5);
              },
            ),
          ],
        ),

    );
  }
}