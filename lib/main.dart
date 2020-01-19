import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=5c2564c5";

void main() async {

  http.Response response = await http.get(request);
  print(jsonDecode(response.body)['results']['currencies']['USD']);

  runApp(MaterialApp(
    home: Container(),
  ));
} 

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         primarySwatch: Colors.blue,
//       ),
//       //home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
