import 'package:ehtbar1_app/constrac.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> addicon = [];
  var number = 0;
  Constrac constrac = new Constrac();
  void select(bool whatselect) {
    bool app = constrac.getBool();
    setState(() {
      if (whatselect == app) {
        addicon.add(
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
          ),
        );
      } else {
        addicon.add(
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
          ),
        );
      }
      if (constrac.isfinsh() == true) {
        Alert(
          context: context,
          title: "انتهاء الاختبار",
          desc: "لقد اجبت على كل الاسئلة",
          buttons: [
            DialogButton(
              child: Text(
                "ابدء من جديد",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        constrac.resert();
        addicon = [];
      } else {
        constrac.nextnumber();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Text('Info'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: addicon),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Image.asset(
                      constrac.getImage(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      constrac.getString(),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  select(true);
                },
                child: Text(
                  'صح',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.indigo[900],
                    padding:
                        EdgeInsets.symmetric(horizontal: 160, vertical: 15)),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  select(false);
                },
                child: Text(
                  'خطأ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 160, vertical: 15)),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
