import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            TextButton(
              child: Text(
                "Add Transaction",
              ),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}