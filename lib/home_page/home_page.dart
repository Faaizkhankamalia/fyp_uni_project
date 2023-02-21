import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fyp_uni/auth/sign_in.dart';
import 'package:fyp_uni/home_page/check_soil_for_vagitable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  SharedPreferences? preferences;
  final stroage = FlutterSecureStorage();
  List<String> images = ['lunch_icon', 'lunch_off_icon', 'lunch_icon', ];
  List<String> names = ['Check Vegetable', 'Check Fertilizers', 'Others', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: const Text("Home "),
        centerTitle: true,
        backgroundColor: const Color(0xff00008b),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const  SizedBox(height: 30,),
            showList(),
          ],
        ),
      ),
    );
  }

  Widget showList() {
    return RefreshIndicator(
      onRefresh: () async {},
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: buildGridItem,
          itemCount: names.length,
          padding: const EdgeInsets.only(top: 15, bottom: 20, left: 15, right: 15)),
    );
  }

  Widget buildGridItem(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CheckForVagitable()));
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: index == 1 ? 2 : 0,
              child: Image.asset(
                'images/${images[index]}.png',
                color: const Color(0xFF9b897b),
                height: 30,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(names[index])
          ],
        ),
      ),
    );
  }

  Widget buttonLogoutWidget() {
    return ButtonTheme(
      height: 47,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () async {
          await stroage.delete(key: "uid");
          Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
        },
        child: const Text(
          'LogOut',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              accountName: Text(
                preferences?.getString('user') ?? '',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text(
                '',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Column(
            children: [],
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buttonLogoutWidget(),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
