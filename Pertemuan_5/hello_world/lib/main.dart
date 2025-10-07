import 'package:flutter/material.dart';
import 'package:hello_world/basic_widget/image_widget.dart';
import 'package:hello_world/basic_widget/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Widget Showcase'),
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
  int _counter = 0;
  DateTime selectedDate = DateTime.now();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Hello!"),
          content: const Text("This is my dialog."),
          actions: [
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text Widget
            const Text(
              'Text Widget:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const MyTextWidget(),
            const SizedBox(height: 20),

            // Image Widget
            const Text(
              'Image Widget:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const MyImageWidget(),
            const SizedBox(height: 20),

            // Counter Widget
            const Text(
              'Counter Widget:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text('Push button to count:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Add Number'),
            ),
            const SizedBox(height: 20),

            // Dialog Widget
            const Text(
              'Dialog Widget:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            ElevatedButton(
              child: const Text('Show Dialog'),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
            const SizedBox(height: 20),

            // Date Picker Widget
            const Text(
              'Date Picker Widget:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Date: ${selectedDate.toLocal()}".split(' ')[0]),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Pick Date'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add',
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
