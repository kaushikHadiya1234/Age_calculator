import 'package:flutter/material.dart';
import 'dart:io';

class Agecalculator extends StatefulWidget {
  const Agecalculator({Key? key}) : super(key: key);

  @override
  State<Agecalculator> createState() => _AgecalculatorState();
}

class _AgecalculatorState extends State<Agecalculator> {
  TextEditingController txtbDD = TextEditingController();
  TextEditingController txtbMM = TextEditingController();
  TextEditingController txtbYYYY = TextEditingController();
  TextEditingController txtcDD = TextEditingController();
  TextEditingController txtcMM = TextEditingController();
  TextEditingController txtcYYYY = TextEditingController();
  String? Bdd,Bmm,Byyyy,Cdd,Cmm,Cyyyy;
  int? BDD,BMM,BYYYY,CDD,CMM,CYYYY;
  int? fdd,fmm,fyyyy;
  int? ndd,nmm,nyyyy;
  List<int> month = [31,28,31,30,31,30,31,31,30,31,30,31];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AGE CALCULATOR",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        leading: Icon(Icons.clear_all),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.account_circle, size: 30, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.indigoAccent.shade700),
                child: Icon(Icons.person, size: 60),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red[100],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom: 10),
                          child: Text(
                            "Enter Your Birthday",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: txtbDD,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.purple)),
                                    label: Text(
                                      "DD",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: txtbMM,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.purple)),
                                    label: Text(
                                      "MM",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: txtbYYYY,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.purple)),
                                    label: Text(
                                      "YYYY",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom: 10),
                          child: Text(
                            "Enter current Date",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: txtcDD,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.purple)),
                                    label: Text(
                                      "DD",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: txtcMM,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.purple)),
                                    label: Text(
                                      "MM",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: txtcYYYY,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.purple)),
                                    label: Text(
                                      "YYYY",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 150, right: 150),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Bdd = txtbDD.text;
                      Bmm = txtbMM.text;
                      Byyyy = txtbYYYY.text;
                      Cdd = txtcDD.text;
                      Cmm = txtcMM.text;
                      Cyyyy = txtcYYYY.text;
                      BDD = int.parse(Bdd!);
                      BMM = int.parse(Bmm!);
                      BYYYY = int.parse(Byyyy!);
                      CDD = int.parse(Cdd!);
                      CMM = int.parse(Cmm!);
                      CYYYY = int.parse(Cyyyy!);
                      print("$CMM");
                      //age
                      fyyyy = CYYYY! - BYYYY!;
                      if(CMM! < BMM!)
                        {
                          fyyyy = fyyyy! - 1;
                          fmm = 12 - (BMM! - CMM!);
                        }
                      else
                        {
                      fmm = CMM! - BMM!;
                        }
                     if(CDD! < BDD!)
                        {
                          fmm = fmm! - 1;
                          fdd = month[CMM! - 1] - (BDD! - CDD!) ;
                        }
                      else
                        {
                          fdd = CDD! - BDD! ;
                        }
                      //next birthday
                      nyyyy = CYYYY! + 1;
                      if(CMM! >= BMM!)
                      {
                        // fyyyy = fyyyy! - 1;
                        nmm = 12 - (CMM! - BMM!);
                      }
                      else
                      {
                        nmm = BMM !- CMM!;
                      }
                      if(CDD! > BDD!)
                      {
                        nmm = nmm! - 1;
                        ndd = month[CMM! - 1] - (CDD! - BDD!);
                      }
                      else
                      {
                        ndd = BDD! - CDD!;
                      }
                    });
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo[900],
                    ),
                    child: Center(
                      child: Text(
                        "CALCULATE AGE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your Age",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                   // color: Colors.red[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Year",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2,
                                        style: BorderStyle.solid,
                                        color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text("$fyyyy"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Month",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2,
                                        style: BorderStyle.solid,
                                        color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text("$fmm"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Day",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2,
                                        style: BorderStyle.solid,
                                        color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text("$fdd"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your Next Birthday",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                   // color: Colors.red[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Year",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2,
                                        style: BorderStyle.solid,
                                        color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text("$nyyyy"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Month",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2,
                                        style: BorderStyle.solid,
                                        color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text("$nmm"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Day",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2,
                                        style: BorderStyle.solid,
                                        color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text("$ndd"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
