import 'package:flutter/material.dart';

import 'Screens/gridtable.dart';
import 'Screens/mintologin.dart';
import 'Screens/mintomenu.dart';
import 'Screens/mintoregister.dart';
import 'Screens/mintosplashscreen.dart';
import 'Screens/tableselection.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home:
      // GridTable()
      // MintoMenuPage()
      // TableSelectionScreen(),
      // MintoRegisterPage()
      // MintoLoginPage()
       MintoSplash(),
    );
  }
}
