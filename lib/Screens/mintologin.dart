import 'package:flutter/material.dart';

import 'gridtable.dart';
import 'mintoregister.dart';

class MintoLoginPage extends StatefulWidget {
  const MintoLoginPage({Key? key}) : super(key: key);

  @override
  State<MintoLoginPage> createState() => _MintoLoginPageState();
}

class _MintoLoginPageState extends State<MintoLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [

                Image.asset(
                  'assets/images/Restaurant-People.png',
                  height: 320,
                  width: 350,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    bottom: 20,
                  ),
                  child: Text(
                    'Login now',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Text('please enter the details below to continue'),
                const SizedBox(height: 20,),
                //Username textfield
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                //Password textfield
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
                //Forgot password
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xFFDA3340),
                        ),
                      ),
                    ),
                  ),
                ),

                //Login button
                Container(
                  height: 100,
                  width: 200,
                  child: Row(
                    children: [
                      Expanded(
                          child: MaterialButton(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => GridTable() ));

                        },
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                const Spacer(),
                //Register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MintoRegisterPage() )) ;
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xFFDA3340),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
