import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: TransferList(),
        appBar: AppBar(
          title: const Text('Transferências',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green[900],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.telegram),
        ),
      ),
    ));

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransferItem(Transfer(100.0, 1000)),
        TransferItem(Transfer(200.0, 2000)),
        TransferItem(Transfer(300.0, 3000)),
       ],
    );
  }
}

class TransferItem extends StatelessWidget {

  final Transfer _transfer;

  TransferItem(this._transfer);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.amount.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
      ),
    );
  }
}

class Transfer {
  final double amount;
  final int accountNumber;

  Transfer(this.amount, this.accountNumber);
}