import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransactionHandler;
  NewTransaction(this.addTransactionHandler);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        // text input
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (title) => titleInput = title,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (amount) => amountInput = amount,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () => addTransactionHandler(
                  titleController.text, double.parse(amountController.text)),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
