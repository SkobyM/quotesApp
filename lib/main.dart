// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'qu.dart';
import 'quoteCards.dart';

void main() => runApp(MaterialApp(
      home: Quotes(),
    ));

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Qu> quoteList = [
    Qu(
        author: "Oscar Wilde",
        text: "Be yourself; everyone else is already taken"),
    Qu(
        author: "Marilyn Monroe",
        text:
            "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best"),
    Qu(author: "Frank Zappa", text: "So many books, so little time"),
    Qu(
        author: "Albert Einstein",
        text:
            "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe"),
    Qu(
        author: "Marcus Tullius Cicero",
        text: "A room without books is like a body without a soul"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Quotes",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quoteList
              .map((quote) => QuoteCards(
                    quote: quote,
                    delete: () {
                      quoteList.remove(quote);
                      setState(() {
                        quoteList.remove(quote);
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
