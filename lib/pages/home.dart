import 'package:flutter/material.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
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
                child: questionField()
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.98,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Text(
                          "A.　",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Text(
                          "B.  ",
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
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
                      child: Container(
                        height: 45,
                        child: Text(
                          "C.",
                          style: TextStyle(color: Colors.black87),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 45,
                        child: Text(
                          "D.",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buttonSection(),
          ],
        ));
  }
}

class buttonSection extends StatelessWidget {
  const buttonSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.98,
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ButtonTheme(
                 height: 100,
                 minWidth: 400,
                 child: OutlinedButton(
                   onPressed: (){},
                   child: Text("A"),
                   style: OutlinedButton.styleFrom(
                     backgroundColor: Colors.amber,
                   )
                 ),
               ),
               TextButton(
                 onPressed: (){},
                  child: Text("B")
               ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                 onPressed: (){},
                  child: Text("C")
               ),
               TextButton(
                 onPressed: (){},
                  child: Text("D")
               ),
              ],
            ),
          ],
        ),
      ),
    );
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
