import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'job application',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4da1e6),
          title: const Text('Job Application'),
          centerTitle: true,
          leading: const Icon(Icons.list, size: 30),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(10, 10),
                  blurRadius: 10,
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome to the Job Application',
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    final snackBar =  SnackBar(content: Text('Button pressed!'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('Apply Now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffa4d7ff),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          tooltip: 'add',
          backgroundColor: Color(0xff5ca6e3),
          child: Icon(Icons.add),
        ),
        backgroundColor: Color(0xff99c5e9),
      ),
    );
  }
}
       