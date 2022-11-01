import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController(),
      valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm({
    super.key,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Título',
                ),
              ),
              TextField(
                controller: valueController,
                decoration: const InputDecoration(
                  hintText: 'Valor (R\$)',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0.0;
                    onSubmit(title, value);
                  },
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
