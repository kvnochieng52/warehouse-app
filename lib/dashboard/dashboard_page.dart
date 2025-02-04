import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String _selectedPage = "Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedPage),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, size: 60, color: Colors.white),
                  SizedBox(height: 10),
                  Text('User Name',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text('user@example.com',
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                setState(() {
                  _selectedPage = "Dashboard";
                });
                Navigator.pop(context);
              },
            ),
            ExpansionTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              children: [
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text("Security"),
                  onTap: () {
                    setState(() {
                      _selectedPage = "Security Settings";
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Profile"),
                  onTap: () {
                    setState(() {
                      _selectedPage = "Profile Settings";
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.analytics),
              title: Text("Reports"),
              children: [
                ListTile(
                  leading: Icon(Icons.pie_chart),
                  title: Text("Sales Report"),
                  onTap: () {
                    setState(() {
                      _selectedPage = "Sales Report";
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bar_chart),
                  title: Text("User Report"),
                  onTap: () {
                    setState(() {
                      _selectedPage = "User Report";
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Logout", style: TextStyle(color: Colors.red)),
              onTap: () {
                // Handle logout action
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to $_selectedPage',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
