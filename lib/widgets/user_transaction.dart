import 'package:flutter/material.dart';
import 'package:flutter_guide_expenses/models/transaction.dart';
import 'package:flutter_guide_expenses/widgets/new_transaction.dart';
import 'package:flutter_guide_expenses/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'g1',
      title: 'Carro',
      amount: 123.56,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'g2',
      title: 'Chinelo',
      amount: 23.56,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }
}
