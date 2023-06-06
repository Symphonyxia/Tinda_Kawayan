
import 'package:flutter/material.dart';
import 'package:tinda_kawayan/pages/HomePage.dart';
import 'package:tinda_kawayan/pages/ItemPage.dart';


import 'contacts.dart';
import 'dashboard.dart';
import 'events.dart';
import 'send_feedback.dart';
import 'settings.dart';
import 'privacy_policy.dart';
import 'my_drawer_header.dart';
import 'notes.dart';
import 'aboutpage.dart';
import 'notifications.dart';
import 'pages/CartPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" :(context) => HomePage(),
        "cartPage" : (context) => CartsPage(),
        "itemPage" : (context) => ItemsPage(),

      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.cartpage) {
      container = CartsPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.aboutpage) {
      container = AboutPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Tinda Kawayan"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Orders", Icons.shopping_bag_outlined,
              currentPage == DrawerSections.cartpage ? true : false),
          menuItem(3, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(4, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(5, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(), 
          menuItem(6, "About", Icons.people_alt_outlined,
              currentPage == DrawerSections.aboutpage ? true : false),
          menuItem(7, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(8, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(9, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(10, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.cartpage;
            } else if (id == 3) {
              currentPage = DrawerSections.contacts;
            } else if (id == 4) {
              currentPage = DrawerSections.events;
            } else if (id == 5) {
               currentPage = DrawerSections.notes;
            } else if (id == 6) {
              currentPage = DrawerSections.aboutpage;
            } else if (id == 7) {
              currentPage = DrawerSections.settings;
            } else if (id == 8) {
              currentPage = DrawerSections.notifications;
            } else if (id == 9) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 10) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

enum DrawerSections {
  dashboard,
  cartpage,
  contacts,
  events,
  notes,
  aboutpage,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}