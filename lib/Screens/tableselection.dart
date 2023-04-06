import 'package:flutter/material.dart';

import 'mintomenu.dart';

class TableSelectionScreen extends StatefulWidget {
  const TableSelectionScreen({Key? key}) : super(key: key);

  @override
  State<TableSelectionScreen> createState() => _TableSelectionScreenState();
}

class _TableSelectionScreenState extends State<TableSelectionScreen> {
  bool status = false;

  Widget table({required String buttonText}) {
    return Container(
      height: 60,
      child: OutlinedButton(
        onPressed: () {
          status = true;
          // print(buttonText);
          // print(status);
        },

        style: OutlinedButton.styleFrom(
          backgroundColor: status ? Colors.pink : Colors.green,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        ),),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Select Your Table :',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                table(buttonText: 'Table 1'),
                table(buttonText: 'Table 2'),
                table(buttonText: 'Table 3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                table(buttonText: 'Table 4'),
                table(buttonText: 'Table 5'),
                table(buttonText: 'Table 6'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                table(buttonText: 'Table 7'),
                table(buttonText: 'Table 8'),
                table(buttonText: 'Table 9'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                table(buttonText: 'Table 10'),
                table(buttonText: 'Table 11'),
                table(buttonText: 'Table 12'),
              ],
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MintoMenuPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                  child: Text('Next',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)),
            )
          ],
        ),
      ),

    );
  }
}
