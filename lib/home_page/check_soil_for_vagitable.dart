import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp_uni/vagitable/maize_screen.dart';
import 'package:fyp_uni/vagitable/potatos_screen.dart';
import 'package:fyp_uni/vagitable/wheat_screen.dart';

import '../common_textfield/common_textfield.dart';
import '../vagitable/tomato_screen.dart';

class CheckForVagitable extends StatefulWidget {
  const CheckForVagitable({Key? key}) : super(key: key);

  @override
  State<CheckForVagitable> createState() => _CheckForVagitableState();
}

class _CheckForVagitableState extends State<CheckForVagitable> {
  TextEditingController php = TextEditingController();
  TextEditingController npk = TextEditingController();
  TextEditingController salinity = TextEditingController();
  TextEditingController carbon = TextEditingController();
  TextEditingController soil = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  List<String> phLevel = ["6 to 7", "5 to 6", "6 to 8", "7 to 8"];
  List<String> npkContents = ["24-8-16", "80-40-40", "14-7-21", "100-50-50", "62-5-50"];
  List<String> salinitySoil = ["Moderately saline", "weakly saline", "slightly saline", "Non-saline"];
  List<String> carbonContents = ["21mg", "25mg", "20mg", "30mg", "35mg"];
  List<String> soilHumidity = [
    "70%",
    "80%",
    "65%",
    "60%",
  ];

  checkBestVagitable() {
    setState(() {
      isLoading = true;
    });
    if (php.text == "6 to 7") {
      return  Timer(const Duration(seconds: 2),(){
        setState(() {
          isLoading = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) => TomatoPage()));
      });


    }
    if (php.text == "5 to 6") {
      return  Timer(const Duration(seconds: 2),(){
        setState(() {
          isLoading = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) => WheatPage()));
      });

    }
    if (php.text == "6 to 8") {
      return  Timer(const Duration(seconds: 2),(){
        setState(() {
          isLoading = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) =>PotatosPage()));
      });

    }
    if (php.text == "7 to 8") {
      return  Timer(const Duration(seconds: 2),(){
        setState(() {
          isLoading = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) =>MaizePage()));
      });

    }



    else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Best Vegetable"),
        centerTitle: true,
        backgroundColor: const Color(0xff00008b),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "For Vegitable",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    showDialogForPhLevel();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CommonTextFieldWithTitle(
                    'Php Level',
                    'Select',
                    php,
                    (val) {
                      if (val!.isEmpty) {
                        return 'This is required field';
                      }
                    },
                    enabled: false,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    showDialogForNpkContents();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CommonTextFieldWithTitle(
                    'NPK contents',
                    'Select',
                    npk,
                    (val) {
                      if (val!.isEmpty) {
                        return 'This is required field';
                      }
                    },
                    enabled: false,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    showDialogForSalinity();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CommonTextFieldWithTitle(
                    'salinity of the soil',
                    'Select',
                    salinity,
                    (val) {
                      if (val!.isEmpty) {
                        return 'This is required field';
                      }
                    },
                    enabled: false,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    showDialogForCarbon();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CommonTextFieldWithTitle(
                    'Carbon Contents',
                    'Select',
                    carbon,
                    (val) {
                      if (val!.isEmpty) {
                        return 'This is required field';
                      }
                    },
                    enabled: false,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    showDialogForSoilHumidity();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CommonTextFieldWithTitle(
                    'Soil humidity',
                    'Select',
                    soil,
                    (val) {
                      if (val!.isEmpty) {
                        return 'This is required field';
                      }
                    },
                    enabled: false,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                isLoading ? Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Text("Checking....", style: TextStyle(fontSize: 18),),
                  SizedBox(width: 5,),
                  CircularProgressIndicator(

                    color: Color(0xff00008b),
                  )
                ],)) : buttonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonWidget() {
    return ButtonTheme(
      height: 47,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color: Color(0xff00008b),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () async {
          if (formKey.currentState!.validate()) {
            checkBestVagitable();
          }
        },
        child: const Text(
          'Check',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }

  showDialogForPhLevel() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Select Ph Level'),
            content: Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            phLevel[index],
                            maxLines: 2,
                            style: TextStyle(fontSize: 13),
                          )),
                        ],
                      ),
                      height: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      php.text = phLevel[index];
                      setState(() {});
                    },
                  );
                },
                itemCount: phLevel.length,
                shrinkWrap: true,
              ),
            ),
          );
        });
  }

  showDialogForNpkContents() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Select Npk Contents'),
            content: Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            npkContents[index],
                            maxLines: 2,
                            style: TextStyle(fontSize: 13),
                          )),
                        ],
                      ),
                      height: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      npk.text = npkContents[index];
                      setState(() {});
                    },
                  );
                },
                itemCount: npkContents.length,
                shrinkWrap: true,
              ),
            ),
          );
        });
  }

  showDialogForSalinity() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Select Salinity Soil'),
            content: Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            salinitySoil[index],
                            maxLines: 2,
                            style: TextStyle(fontSize: 13),
                          )),
                        ],
                      ),
                      height: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      salinity.text = salinitySoil[index];
                      setState(() {});
                    },
                  );
                },
                itemCount: salinitySoil.length,
                shrinkWrap: true,
              ),
            ),
          );
        });
  }

  showDialogForCarbon() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Select Carbon Contents'),
            content: Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            carbonContents[index],
                            maxLines: 2,
                            style: TextStyle(fontSize: 13),
                          )),
                        ],
                      ),
                      height: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      carbon.text = carbonContents[index];
                      setState(() {});
                    },
                  );
                },
                itemCount: carbonContents.length,
                shrinkWrap: true,
              ),
            ),
          );
        });
  }

  showDialogForSoilHumidity() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Select Soil Humidity'),
            content: Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            soilHumidity[index],
                            maxLines: 2,
                            style: TextStyle(fontSize: 13),
                          )),
                        ],
                      ),
                      height: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      soil.text = soilHumidity[index];
                      setState(() {});
                    },
                  );
                },
                itemCount: soilHumidity.length,
                shrinkWrap: true,
              ),
            ),
          );
        });
  }

  Widget titleForDialog(BuildContext context, String title) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Center(
        child: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 17, height: 1.55), textAlign: TextAlign.center),
      ),
    );
  }

  showDialogForCheckShow() {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          content: Container(
            height: 213,
            child: Column(
              children: [
                Image.asset("assets/cng1.png"),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Congratulations Sussefully Checked",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  height: 13,
                ),
                Container(
                  child: const Text(
                    "Lectu",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text(
                "Close",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoLectureGridView()));
              },
            )
          ],
        );
      },
    );
  }
}
