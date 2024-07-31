import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'db_helper.dart';
import 'modules/ebms/ebms_module.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => DBHelper()),
        Provider(create: (_) => EBMSApi()),
      ],
      child: MaterialApp(
        title: 'Aenzbi Inventory System',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi Inventory System'),
      ),
      body: Center(
        child: Text('Welcome to Aenzbi Inventory System!'),
      ),
    );
  }
}
