import 'package:expenses_app/widgets/new_transaction.dart';
import 'package:expenses_app/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

import 'package:expenses_app/widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // container only takes as much width as its children need
              width: double.infinity,
              child: Card(
                // depends on size of child, unless parent has its own clearly defined width
                child: Text('CHART!'),
                elevation: 5,
                color: Colors.blue,
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
