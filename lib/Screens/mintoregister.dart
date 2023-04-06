import 'package:flutter/material.dart';
import 'package:minto_app/Screens/tableselection.dart';

import 'gridtable.dart';
import 'mintologin.dart';


class MintoRegisterPage extends StatelessWidget {
  const MintoRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget textField({required String hintText}) {
      return TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const UnderlineInputBorder(),
        ),
      );
    }

    Widget button({required String buttonText, required Color color, required Color textColor}) {
      return Container(
        width: 120,
        height: 50,
        child: ElevatedButton(
            onPressed: () {
              if(buttonText == 'Register') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GridTable() ));
              }
              else
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MintoLoginPage() ));
                }
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              backgroundColor: color,
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 20,
                color: textColor,
              ),
            )),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              const Text(
                'Register Here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Container(
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textField(hintText: 'Name'),
                    textField(hintText: 'Username'),
                    textField(hintText: 'Password'),
                    textField(hintText: 'Confirmpassword'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                      buttonText:'Cancel' ,
                      color:Colors.grey,
                      textColor: Colors.black),
                  const SizedBox(width: 20,),
                  button(
                      buttonText:'Register' ,
                      color:Colors.pink,
                  textColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
