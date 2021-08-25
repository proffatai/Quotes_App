import 'package:flutter/material.dart';
import 'Quote.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote("Adesanmi", "This life is tough and soft"),
    Quote("Sulaimon", "I love my life , no cap"),
    Quote("Ibraz", "No food for lazy man"),
    Quote("Hungryman", "Food is ready")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("My worst quotes"),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes.map((quote) {
            return Card(
                color: Colors.black,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(children: <Widget>[
                  Text(quote.text,
                      style: TextStyle(fontSize: 15, color: Colors.grey[300])),
                  SizedBox(height: 6.2),
                  Text(
                    quote.author,
                    style: TextStyle(fontSize: 15, color: Colors.orange[300]),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    },
                    icon: Icon(Icons.delete, size: 15),
                    label: Text("Delete quote"),
                  ),
                ]));
          }).toList(),
        ));
  }
}
