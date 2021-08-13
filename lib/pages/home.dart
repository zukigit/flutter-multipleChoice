import 'package:flutter/material.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  bool tapA = false, tapB = false, tapC = false, tapD = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("NihonGo")),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: FractionallySizedBox(
                  alignment: Alignment.center,
                  widthFactor: 0.98,
                  child: questionField()),
            ),
            FractionallySizedBox(
              widthFactor: 0.98,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tapA ? tapA = false : tapA = true;
                            tapC = false; tapB = false; tapD = false;
                          });
                        },
                        child: Container(
                          height: 60,
                          child: Text(
                            "A.",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(width: 1, color: Colors.white),
                                bottom:
                                    BorderSide(width: 1, color: Colors.white)),
                            color: tapA ? Colors.blueGrey : Colors.blue[800],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tapB ? tapB = false : tapB = true;
                            tapA = false; tapC = false; tapD = false;
                          });
                        },
                        child: Container(
                          height: 60,
                          child: Text(
                            "B.",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(width: 1, color: Colors.white),
                                bottom:
                                    BorderSide(width: 1, color: Colors.white)),
                            color: tapB ? Colors.blueGrey : Colors.blue[800],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.98,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tapC ? tapC = false : tapC = true;
                            tapA = false; tapB = false; tapD = false;
                          });
                        },
                        child: Container(
                          height: 60,
                          child: Text(
                            "C.",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(width: 1, color: Colors.white),
                                bottom:
                                    BorderSide(width: 1, color: Colors.white)),
                            color: tapC ? Colors.blueGrey : Colors.blue[800],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tapD ? tapD = false : tapD = true;
                            tapA = false; tapB = false; tapC = false;
                          });
                        },
                        child: Container(
                          height: 60,
                          child: Text(
                            "D.",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(width: 1, color: Colors.white),
                                bottom:
                                    BorderSide(width: 1, color: Colors.white)),
                            color: tapD ? Colors.blueGrey : Colors.blue[800],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              child: Text("press me"),
              onPressed: (){
                print("A $tapA B $tapB C $tapC D $tapD");
              },
            )
          ],
        ));
  }
}

class questionField extends StatelessWidget {
  const questionField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.0),
          top: BorderSide(width: 0.0),
          right: BorderSide(width: 0.0),
          left: BorderSide(width: 0.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Text(
            "1. ",
            style: TextStyle(fontSize: 20),
          )),
          Expanded(
              child: Container(
                  child: Text(
            "sfsdfsfs",
            style: TextStyle(fontSize: 20),
          )))
        ],
      ),
      height: 130,
    );
  }
}
