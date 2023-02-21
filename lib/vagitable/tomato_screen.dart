import 'package:flutter/material.dart';
class TomatoPage extends StatefulWidget {
  const TomatoPage({Key? key}) : super(key: key);

  @override
  State<TomatoPage> createState() => _TomatoPageState();
}

class _TomatoPageState extends State<TomatoPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: const Text("Tomato"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "images/tomato.jpg.webp"),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.only(top: 50.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
                Container(
                  height: 150,
                  child: Card(
                    color: Colors.teal.shade400,
                    elevation: 2,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Accordingly The Information you Entered", style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,),
                          const SizedBox(height: 20,),

                          Text("Tomatos is Best For Your Soil", style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,),
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
