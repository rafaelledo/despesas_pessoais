import 'package:flutter/material.dart';
import 'transaction_user.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Text(
            'Despesas Pessoais',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text(
                'Gráfico',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}
