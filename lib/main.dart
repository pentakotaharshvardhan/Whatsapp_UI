import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:whatsapp/new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsAppMain(),
    );
  }
}

class WhatsAppMain extends StatefulWidget {
  @override
  _WhatsAppMainState createState() => _WhatsAppMainState();
}

class _WhatsAppMainState extends State<WhatsAppMain> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          newPage("updates"),
          newPage("Communities"),
          newPage("Call"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message,), label: "Chats",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle,), label: "Updates",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.people,), label: "Communities",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.call,), label: "Calls",backgroundColor: Colors.white),
        ],
      ),
    );
  }
}

class WhatsAppPage extends StatelessWidget {
  final String title;
  final Color appBarColor;

  WhatsAppPage(this.title, this.appBarColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(title),
      ),
      body: Center(
        child: Text("This is the $title page", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
