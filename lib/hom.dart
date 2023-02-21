import 'dart:async';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List color = [
    Colors.teal,
    Colors.red,
    Colors.purple,
    Colors.orange,
    Colors.blue,
    Colors.grey,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.purple
  ];
  List que = [
    "Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?",
    "Howmany  match formats in \ninternational cricket?",
    "where is bhuj khlifa?",
    "which year india won t20 cup?",
    "who is india pm?",
    "Which state largest in india?",
    "Which day is independence day? ",
    "Who is current captain \nof Newzland cricket team?",
    "Who is world richest man?",
    "where is siliconvelly?"
  ];

  List oa = [
    "7",
    "2",
    "pakistan",
    "2007",
    "Narendra modi",
    "goa",
    "26 january,1947",
    "Stave Smith",
    "Elon musk",
    "koria",
  ];
  List ob = [
    "10",
    "3",
    "dubai",
    "2011",
    "donald trump",
    "keral",
    "15 january,1947",
    "Aron finch",
    "Mukesh Ambani",
    "india",
  ];
  List oc = [
    "12",
    "4",
    "usa",
    "2013",
    "putin",
    "Rajasthan",
    "15 August,1947",
    "B.mccullam",
    "ratan tata",
    "japan",
  ];
  List od = [
    "13",
    "5",
    "russia",
    "1999",
    "king jong",
    "Gujarat",
    "15 january,1956",
    "k.Williamson",
    "rock",
    "america",
  ];
  List ranswer = [
    "10",
    "3",
    "dubai",
    "2007",
    "Narendra modi",
    "Rajasthan",
    "15 August,1947",
    "k.Williamson",
    "Elon musk",
    "america",
  ];

  List money = [
    0,
    "5,000",
    "10,000",
    "20,000",
    "50,000",
    "1,00,000",
    "5,00,000",
    "10,00,000",
    "35,00,000",
    "70,00,000",
    "1,00,00,000"
  ];

  List uanswer = [];
  int point = 0;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color[i],
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  i = 0;
                  uanswer.clear();
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: color[i],
                    child: Text(
                      "${i + 1}.${que[i]}",
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        w(20),
                        InkWell(
                          onTap: () {
                            result(oa[i]);
                          },
                          child: option(oa[i],'A'),
                        ),
                        w(10),
                        InkWell(
                          onTap: () {
                            result(ob[i]);
                          },
                          child: option(ob[i],'B'),
                        )
                      ],
                    ),
                    h(25),
                    Row(
                      children: [
                        w(20),
                        InkWell(
                          onTap: () {
                            result(oc[i]);
                          },
                          child: option(oc[i],'C'),
                        ),
                        w(10),
                        InkWell(
                          onTap: () {
                            result(od[i]);
                          },
                          child: option(od[i],'D'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget w(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget h(double height) {
    return SizedBox(
      height: height,
    );
  }



  Widget option(String? name,op) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      height: 50,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Text(
        "$op.${name}",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  void result(String? option){
    setState(() {

      if (i <= 9) {
        uanswer.add(option);
        if (uanswer[i] == ranswer[i]) {
          Navigator.pushNamed(context, '1',
              arguments: money[i + 1]);
        } else {
          Navigator.pushNamed(context, '2',
              arguments: money[i]);
          i = 0;
          i--;
          uanswer.clear();
        }
      }
      i++;
      if (i == 10) {
        i = 0;
        uanswer.clear();
      }
    });
  }

}