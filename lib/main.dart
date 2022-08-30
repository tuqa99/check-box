

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool femaleCheckbox = false;
  bool maleCheckbox = false;
  bool ltucCheckbox = false;
  bool ltuc2Checkbox = false;
  bool yarmoukCheckbox = false;
  bool justCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Container(
              child: Text(
                'what is your gender',
                style: TextStyle(fontSize: 33),
              ),
            ),
            Center(
              child: Row(
                children: [
                  Text('female'),
                  Checkbox(
                    activeColor: Color.fromARGB(255, 233, 30, 216),
                    checkColor: Colors.black,
                    value: femaleCheckbox,
                    onChanged: (val) {
                      setState(() {
                        maleCheckbox = val!;
                      });
                    },
                  ),
                  Text('male'),
                  Checkbox(
                    activeColor: Colors.blue,
                    checkColor: Colors.black,
                    value: maleCheckbox,
                    onChanged: (value) {
                      setState(() {
                        maleCheckbox = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Container(
              child: Text(
                'choose your university',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              child: CheckboxListTile(
                value: ltucCheckbox,
                checkColor: Colors.red,
                activeColor: Colors.lightGreenAccent,
                title: Text(
                  'LTUC',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text('Amman'),
                onChanged: (value) {
                  setState(() {
                    ltucCheckbox = value!;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                value: ltuc2Checkbox,
                checkColor: Colors.blue,
                activeColor: Colors.purpleAccent,
                title: Text(
                  'LTUC',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text('Irbid'),
                onChanged: (value) {
                  setState(() {
                    ltuc2Checkbox = value!;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                value: yarmoukCheckbox,
                checkColor: Color.fromARGB(255, 68, 223, 7),
                activeColor: Color.fromARGB(255, 218, 26, 106),
                title: Text(
                  'Yarmouk',
                  style: TextStyle(fontSize: 55, color: Colors.pinkAccent),
                ),
                subtitle: Text('Irbid'),
                onChanged: (value) {
                  setState(() {
                    yarmoukCheckbox = value!;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                value: justCheckbox,
                checkColor: Color.fromARGB(255, 68, 223, 7),
                activeColor: Color.fromARGB(255, 218, 26, 106),
                title: Text(
                  'JUST',
                  style:
                      TextStyle(fontSize: 44, color: Colors.lightGreenAccent),
                ),
                subtitle: Text('Irbid'),
                onChanged: (value) {
                  setState(() {
                    justCheckbox = value!;
                  });
                },
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  child: Text(
                    'hello',
                    style: TextStyle(
                        fontSize: 55, backgroundColor: Colors.blueGrey),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
