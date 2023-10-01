import 'package:flutter/material.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/experiences.dart';
import 'package:flutter_application_1/portfolio.dart';
import 'package:flutter_application_1/skill.dart';
import 'package:flutter_application_1/work.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        // useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Personal Portfolio'),
            backgroundColor: Colors.cyan,
            centerTitle: true,
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.code),
                text: 'Skill',
              ),
              Tab(
                icon: Icon(Icons.work),
                text: 'Work',
              ),
              Tab(
                icon: Icon(Icons.work_outline),
                text: 'experiences',
              ),
              Tab(
                icon: Icon(Icons.photo_library),
                text: 'Portfolio',
              ),
            ]),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text('Sabbira SULTANA'), // Replace with your name
                  accountEmail: Text(
                      'sultana15-14575@diu.edu.bd'), // Replace with your email
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'lib/image/99040004.jpeg'), // Replace with your profile image asset
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AboutPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('Skills'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SkillsPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Work'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WorkPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work_history),
                  title: Text('Experiences'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ExperiencesPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Portfolio'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PortfolioPage())); // Close the drawer
                  },
                ),
                // Add more drawer items for other sections/pages
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AboutPage(),
              SkillsPage(),
              WorkPage(),
              ExperiencesPage(),
              PortfolioPage()
            ],
          ),
        ));
  }
}