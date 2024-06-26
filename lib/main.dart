import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetDemo(),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum Pemograman Perangkat Bergerak'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Zidane Arryo (text)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Zidane Arryo (Container)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, color: Colors.red),
                  SizedBox(width: 10),
                  Icon(Icons.sunny, color: Colors.yellow),
                ],
              ),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Zidane Arryo (Button)'),
              ),
                            SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3QHNiAHBWExvXQK0OVha9o9IP_W9gjGhtQcbwwzdzmQ&s',
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    'Zidane Arryo (Image)',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ],
              ),
               SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Zidane Arryo (Aspek Rasio)',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
                   SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Zidane Arryo (Aspek Rasio)',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
