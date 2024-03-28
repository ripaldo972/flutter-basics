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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: const Text(
            'Coding Flutter',
          )),
          body: const ChangeTimeWidget(),
        ));
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidget();
}

class _ChangeTimeWidget extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.only(top: 200, left: 70),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Text('Belajar Flutter Bassics'),
          ),
          Text('Waktu Terkini: $time'),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  time = DateTime.now();
                });
              },
              child: const Text('Perbarui Waktu')),
        ],
      ),
    );
  }
}
