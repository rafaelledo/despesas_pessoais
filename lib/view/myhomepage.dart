import 'package:despesas_pessoais/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatelessWidget {
	final _transactions = [
		Transaction(
			id: 't1',
			title: 'Novo tênis de corrida',
			value: 310.76,
			date: DateTime.now(),
		),
		Transaction(
			id: 't2',
			title: 'Conta de Luz',
			value: 211.30,
			date: DateTime.now(),
		),
	];

	MyHomePage({super.key});

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
				children: <Widget>[
					const SizedBox(
						child: Card(
							color: Colors.blue,
							elevation: 5,
							child: Text(
								'Gráfico',
								textAlign: TextAlign.center,
							),
						),
					),
					Column(
						children: _transactions.map((tr) {
							return Card(
								child: Row(
									children: [
										Container(
											margin: const EdgeInsets.symmetric(
												horizontal: 15,
												vertical: 10,
											),
											decoration: BoxDecoration(
													border: Border.all(
												color: Colors.purple,
												width: 2,
											)),
											padding: const EdgeInsets.all(10),
											child: Text(
												'R\$ ${tr.value.toStringAsFixed(2)}',
												style: const TextStyle(
													fontWeight: FontWeight.bold,
													fontSize: 20,
													color: Colors.purple,
												),
											),
										),
										Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Text(
													tr.title,
													style: const TextStyle(
														fontSize: 16,
														fontWeight: FontWeight.bold,
													),
												),
												Text(DateFormat('d MMM y').format(tr.date),
														style: const TextStyle(
															color: Colors.grey,
														)),
											],
										)
									],
								),
							);
						}).toList(),
					),
					Card(
							elevation: 5,
							child: Padding(
								padding: const EdgeInsets.all(10),
								child: Column(
									children: [
										const TextField(
											decoration: InputDecoration(hintText: 'Título'),
										),
										const TextField(
											decoration: InputDecoration(
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
							))
				],
			),
		);
	}
}
