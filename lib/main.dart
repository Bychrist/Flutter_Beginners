import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(
      MaterialApp(
        home: QuoteList(),
      ),
    );

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Gabriel Nzete',
        text: 'Be yourself; everyone  else is already taken.'),
    Quote(
        author: 'Hillary Philips',
        text: 'I have nothing to declare except my genius'),
    Quote(
      author: 'Mary Uchenna',
      text: 'Never out shine the master',
    ),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            OutlinedButton.icon(
              onPressed: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
              label: Text('Delete Quote'),
              icon: Icon(
                Icons.delete,
                color: Colors.amberAccent,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quote',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
