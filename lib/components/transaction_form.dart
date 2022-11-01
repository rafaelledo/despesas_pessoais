import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  String title = "", value = "";

  TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => title = value,
                decoration: const InputDecoration(
                  hintText: 'Título',
                ),
              ),
              TextField(
                onChanged: (value) => this.value = value,
                decoration: const InputDecoration(
                  hintText: 'Valor (R\$)',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Nova Transação'),
                ),
              )
            ],
          ),
        ));
  }
}
