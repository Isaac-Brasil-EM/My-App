import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                  'https://avatars.githubusercontent.com/u/114941431?v=4'),
            ),
            accountName: Text('Isaac Brasil'),
            accountEmail: Text('isaac@flutter.com.br'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            subtitle: Text("Tela de inicio"),
            onTap: () {
              print("home");
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
            subtitle: Text("Sair do app"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          )
        ]),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(
              height: 10,
            ),
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
