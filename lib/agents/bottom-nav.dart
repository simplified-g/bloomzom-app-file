import 'package:bloomzon/Initial-pages/login.dart';
import 'package:bloomzon/agents/agentdashboard.dart';
import 'package:bloomzon/agents/messages.dart';
import 'package:bloomzon/agents/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          title: Text('Home'),
          icon: IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            splashColor: Colors.white,
            highlightColor: Colors.amber,
            enableFeedback: true,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgentDashboardPage()),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.person_pin,
              color: Colors.grey,
            ),
            splashColor: Colors.white,
            highlightColor: Colors.amber,
            enableFeedback: true,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          title: Text('Account'),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.markunread,
              color: Colors.grey,
            ),
            splashColor: Colors.white,
            highlightColor: Colors.amber,
            enableFeedback: true,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
          ),
          title: Text('Messages'),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.grey,
            ),
            splashColor: Colors.white,
            highlightColor: Colors.amber,
            enableFeedback: true,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          title: Text('Logout'),
        ),
      ],
    );
  }
}
