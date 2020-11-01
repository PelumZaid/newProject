import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imageText;
  String textWord;

  Widget _ServicePanel(imageText, textWord) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                print("AAB");
              });
            },
            child: Container(
              height: 70,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(imageText), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          textWord,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              //color: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/index.jpeg")),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Hi, Customer",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Welcome to Fnb Customer Service")
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.pagelines,
                  size: 15,
                ),
                Text(" Customer Service Panel")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white), //(0xFF4DB6AC)
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _ServicePanel("assets/images/loan.png", "Loan Service"),
                      _ServicePanel(
                          "assets/images/loan.png", "Customer Service"),
                      _ServicePanel(
                          "assets/images/loan.png", "Customer Service"),
                      _ServicePanel(
                          "assets/images/loan.png", "Customer Service")
                      //SizedBox(width: 26),
                    ],
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
