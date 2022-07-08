import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_sample/header.dart';
import 'package:flutter_web_sample/tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: ListView(
        children: [
          // Image.asset('images/profile.jpeg'),
          HeaderWidget(),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(
          //         left: 20.0,
          //         bottom: 10,
          //       ),
          //       child: Text(
          //         'Gallery',
          //         style: TextStyle(
          //           fontSize: 24,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 200,
          //       padding: const EdgeInsets.only(
          //         left: 20.0,
          //         right: 20.0,
          //       ),
          //       child: ListView.separated(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 50,
          //         itemBuilder: (context, index) {
          //           return TileWidget(
          //             title: index.toString(),
          //             description: 'Sample',
          //           );
          //         },
          //         separatorBuilder: (context, index) {
          //           return SizedBox(
          //             width: 20,
          //           );
          //         },
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
