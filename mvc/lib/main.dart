import 'package:flutter/material.dart';
import 'package:mvc/singleton_data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo - Trani',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Singleton'),
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

  final TextEditingController _etController = TextEditingController();
  SingletonData singletonData = SingletonData();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: 
      ListView(
        children: [
          TextField(
            controller: _etController,
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      singletonData.resetData();
                    });

                  },

                  child: const Text("Clear"),
                  color: Color.fromARGB(255, 210, 127, 218),
                ),
                ),
                Expanded(
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      singletonData.listObjects.add(_etController.text);
                    });
                  },
                  child: const Text("Save"),
                  color: Color.fromARGB(255, 123, 56, 155),
                ),
                ),
              Center(
          child: Text(singletonData.listObjects.toString(),
          style: const TextStyle(fontSize: 20),),      
              )
            ],
          )
        ],
      ),);
  }
}