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
    "Shantanu Narayan",
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
    "assets/images/SunderPichai.jpg",
    "assets/images/BillGates.jpg",
    "assets/images/jeffbezos.jpg",
    "assets/images/mukeshambani.jpg",
    "assets/images/TimCook.jpg",
    "assets/images/ShantanuNarayen.jpg",
    "assets/images/Daniel.jpg",
    "assets/images/haraldkrueger.jpg",
    "assets/images/michaeldell.jpg",
    "assets/images/BobSwan.jpg",
  ];

  List mycolor = [
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.indigo,
                    Colors.purple,
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: CEOname.length, physics: BouncingScrollPhysics(),

              itemBuilder: (context, index) {
                return CEOwiget(images[index], CEOname[index], Company[index],
                    mycolor[index]);
              },),
          ],
        ),
      ),
    );
  }

  Widget CEOwiget(String img, String n2, String com, Color cl1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage("$img"),
        ),
        title: Text(n2),
        subtitle: Text(com),
        tileColor: cl1,
        contentPadding: EdgeInsets
            .all(5),
        trailing:
        Icon(Icons.arrow_circle_right),
        shape: OutlineInputBorder(borderRadius:
        BorderRadius.circular(18)),),
    );


  }

}
