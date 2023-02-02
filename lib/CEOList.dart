import 'package:flutter/material.dart';

class Ceo extends StatefulWidget {
  const Ceo({Key? key}) : super(key: key);

  @override
  State<Ceo> createState() => _CeoState();
}

class _CeoState extends State<Ceo> {
  Color c1 = Color(0xffC0F0FA);
  Color c2 = Color(0xff175375);
  Color c3 = Color(0xff2EA9EC);
  Color c4 = Color(0xffA029DD);
  Color c5 = Color(0xffBF9DF1);
  Color c6 = Color(0xFF);

  List CEOname = [
    "Sunder Pichai",
    "Bill Getes",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan",
  ];

  List Company = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];

  List images = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "CEO of MNC's",
            style: TextStyle(fontSize: 18, color: c2),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: c1,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
            ),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Sunder Pichai",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
