import 'package:flutter/material.dart';
import 'package:quotes_app/models/quote.dart';
import 'package:quotes_app/widgets/quote_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Quote> quotes = [
    Quote(
        quote: "The only way to do great work is to love what you do.",
        author: "Steve Jobs"),
    Quote(
        quote:
            "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.",
        author: "Helen Keller"),
    Quote(
        quote:
            "The only thing that stands between you and your dream is the will to try and the belief that it is actually possible.",
        author: "Joel Brown"),
    Quote(
        quote: "The only way to fail is to give up.",
        author: "Thomas A. Edison"),
    Quote(
        quote:
            "The only person you are destined to become is the person you decide to be.",
        author: "Ralph Waldo Emerson"),
    Quote(
        quote: "The only way to do great work is to love what you do.",
        author: "Steve Jobs"),
    Quote(
        quote:
            "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.",
        author: "Helen Keller"),
    Quote(
        quote:
            "The only thing that stands between you and your dream is the will to try and the belief that it is actually possible.",
        author: "Joel Brown"),
    Quote(
        quote: "The only way to fail is to give up.",
        author: "Thomas A. Edison"),
    Quote(
        quote:
            "The only person you are destined to become is the person you decide to be.",
        author: "Ralph Waldo Emerson"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    deleteFunction: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
          ),
        ),
      ),
    );
  }
}
