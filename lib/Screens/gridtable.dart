import 'package:flutter/material.dart';

import 'mintomenu.dart';

class GridTable extends StatefulWidget {
  const GridTable({Key? key}) : super(key: key);

  @override
  State<GridTable> createState() => _GridTableState();
}

class _GridTableState extends State<GridTable> {
  var status = false;

  List<Map<String, dynamic>> table =[
    {
     'table_no' : 1,
     'status' : false
    },
    {
      'table_no' : 2,
      'status' : false
    },
    {
      'table_no' : 3,
      'status' : false
    },
    {
      'table_no' : 4,
      'status' : false
    },
    {
      'table_no' : 5,
      'status' : false
    },
    {
      'table_no' : 6,
      'status' : false
    },
    {
      'table_no' : 7,
      'status' : false
    },
    {
      'table_no' : 8,
      'status' : false
    },
    {
      'table_no' : 9,
      'status' : false
    },
    {
      'table_no' : 10,
      'status' : false
    },
    {
      'table_no' : 11,
      'status' : false
    },
    {
      'table_no' : 12,
      'status' : false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Your Table :',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

      ) ,
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 10, bottom: 20, left: 10),
        child: GridView.builder(
              itemCount: table.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                crossAxisSpacing:10,
                mainAxisSpacing: 20) ,
                itemBuilder: (context,index) {
                  return Container(
                    height: 10,
                    child: OutlinedButton(
                      onPressed: () {
                        table[index]['status'] = true;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MintoMenuPage()));
                      },

                      style: OutlinedButton.styleFrom(
                        backgroundColor: table[index]['status'] ? Colors.pink : Colors.green,
                      ),
                      child: Text(
                        'Table ${table[index]['table_no']}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),),

                  );
                }),
      ),

    );
  }
}
