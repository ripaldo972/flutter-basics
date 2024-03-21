import 'package:flutter/material.dart';

void main() {
  runApp(TimeApp());
}

class TimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coding Flutter'),
        ),
        body: ChangeTimeWidget(),
      ),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChangeTimeWidget();
}

class _ChangeTimeWidget extends State<StatefulWidget> {
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Waktu Sekarang: $time'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                time = DateTime.now();
              });
            },
            child: const Text('Reset Waktu')),
      ],
    );
  }
}
