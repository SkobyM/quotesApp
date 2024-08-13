// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'qu.dart';

class QuoteCards extends StatelessWidget {
  final Qu? quote;
  final VoidCallback? delete;
  QuoteCards({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                " \" ${quote?.text} \"",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "- ${quote?.author}",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            IconButton(onPressed: delete, icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
