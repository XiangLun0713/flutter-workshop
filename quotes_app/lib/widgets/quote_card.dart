import 'package:flutter/material.dart';

import '../models/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function deleteFunction;
  const QuoteCard(
      {super.key, required this.quote, required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft, child: Text(quote.quote)),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text("---${quote.author}"),
              ),
              const Divider(
                height: 30,
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {
                  deleteFunction();
                },
                child: const Text("Delete"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
