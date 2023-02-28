import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IFOOD',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Montserrat',
      ),
      home: const MyHomePage(title: 'IFOOD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    image: DecorationImage(
                      image: AssetImage("assets/hasil/rendang.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    color: Colors.pink,
                    image: DecorationImage(
                      image: AssetImage("assets/hasil/gudeg.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    color: Colors.pink,
                    image: DecorationImage(
                      image: AssetImage("assets/hasil/rawon.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    color: Colors.pink,
                    image: DecorationImage(
                      image: AssetImage("assets/hasil/pempek.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
