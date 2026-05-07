import 'package:flutter/material.dart';
import 'package:navigation/arguments.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final arguments = ModalRoute.of(context)!.settings.arguments as Arguments;

return WillPopScope(
  onWillPop: () async {
    debugPrint('WillPopScope acionado! id: ${arguments.id}');
    if (arguments.id > 10) {
      Navigator.pop(context, "O id do argumento é ${arguments.id}");
    } else {
      Navigator.pop(context, "O id do argumento é menor que 10");
    }
    return true;
  },

      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:  Text(arguments.name),
      ),



          body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "btn1",
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    )
);
  }
}
