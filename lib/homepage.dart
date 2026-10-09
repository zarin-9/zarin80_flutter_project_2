import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage 64B"),
        backgroundColor: const Color.fromARGB(255, 164, 103, 124),
        foregroundColor: Colors.white,
        // Leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ), // AppBar
      
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ), // UserAccountsDrawerHeader
            
            ListTile(
              leading: Icon(Icons.home),
              hoverColor: Colors.lime,
              title: Text("Homepage"),
              onTap: () {},
            ), // ListTile
            
            Divider(),
            
            ListTile(
              leading: Icon(Icons.settings),
              hoverColor: Colors.lime,
              title: Text("Settings"),
              onTap: () {},
            ), // ListTile
            
            Divider(),
            
            Spacer(),
            
            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: Colors.lime,
              title: InkWell(child: Text("Profile"), onTap: () {}),
            ), // ListTile
          ],
        ), // Column
      ), // Drawer
      
      body: Text(
        "Welcome to homepage",
        style: GoogleFonts.lobster(
          textStyle: TextStyle(
            fontSize: 30,
            color: const Color.fromARGB(255, 164, 103, 124),
          ), // TextStyle
        ),
      ), // Text
    ); // Scaffold
  }
}