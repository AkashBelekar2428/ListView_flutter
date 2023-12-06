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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {

  }

  @override
  Widget build(BuildContext context) {
    const nameArr = ['Swift','Java','C','C++','HTML','CSS,Flutter','Dart','iOS','Android','VsCode'];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Listview'),
      ),
      body:ListView.builder(itemBuilder: (context, index) {
        return Text(nameArr[index], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

      },
      itemCount: nameArr.length,
        itemExtent: 100,
      )
      );
  }
}
