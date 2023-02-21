import 'package:flutter/material.dart';
class PotatosPage extends StatefulWidget {
  const PotatosPage({Key? key}) : super(key: key);

  @override
  State<PotatosPage> createState() => _PotatosPageState();
}

class _PotatosPageState extends State<PotatosPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: const Text("potato"),
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
                      children: const [
                        Text("Accordingly The Information you Entered", style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,),
                        SizedBox(height: 20,),

                        Text("potato is Best For Your Soil", style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,),
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
