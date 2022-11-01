import 'package:flutter/material.dart';
import 'components/myhomepage.dart';

void main(List<String> args) {
	runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
	const ExpensesApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: MyHomePage(),
		);
	}
}
