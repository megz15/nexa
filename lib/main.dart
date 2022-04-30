import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexa',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Nexa Chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              print('theme changed');
            },
            icon: Icon(Icons.wb_sunny_rounded),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                // padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 8.0,
                    children: [
                      Container(
                        width: 160,
                        child: ElevatedButton(
                          child: Text('Connect to Server'),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 160,
                        child: ElevatedButton(
                          child: Text('Emit Test Message'),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: Center(child: Text('chatbox')),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.send))),
            ),
          ),
        ],
      ),
    );
  }
}
