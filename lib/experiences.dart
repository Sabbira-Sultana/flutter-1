import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiences',
      home: ExperiencesPage(),
    );
  }
}

class ExperiencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Experiences'),
        backgroundColor: Colors.black54,
        centerTitle: true,
        // Customize the app bar color
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: experiences.length,
          itemBuilder: (context, index) {
            final experience = experiences[index];
            return Card(
              elevation: 4.0,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16.0),
                leading: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Colors
                      .teal, // Customize the circle avatar background color
                  child: Text(
                    experience
                        .title[0], // Display the first letter of the title
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  experience.title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.company,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      experience.duration,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      experience.description,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Implement navigation to the experience details page
                  // You can use Navigator.push to navigate to a details page.
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Experience {
  final String title;
  final String company;
  final String duration;
  final String description;

  Experience({
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
  });
}

final List<Experience> experiences = [
  Experience(
    title: 'Not any working experience',
    company: ' ',
    duration: 'null',
    description: 'Want to become an web devoloper',
  ),
  // Add more experience details as needed
];
