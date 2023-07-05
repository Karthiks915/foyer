import 'package:flutter/material.dart';

class DialogBoxComponent extends StatelessWidget {
  final bool isEmptyInput;

  const DialogBoxComponent({Key? key, required this.isEmptyInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = isEmptyInput ? 'Please enter some values' : 'Location Already Exists';
    String content = isEmptyInput ? '' : 'The location you entered already exists.';

    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
