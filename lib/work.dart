import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WorkPage(),
  ));
}

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Projects'),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: workProjects.length,
        itemBuilder: (context, index) {
          final project = workProjects[index];
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text(
                project.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                project.description,
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                // Add your navigation logic or details view here
              },
            ),
          );
        },
      ),
    );
  }
}

class WorkProject {
  final String title;
  final String description;

  WorkProject({
    required this.title,
    required this.description,
  });
}

final List<WorkProject> workProjects = [
  WorkProject(
    title: 'Project 1',
    description: 'Project 1.',
  ),
  WorkProject(
    title: 'Project 2',
    description: 'Project 2.',
  ),
  WorkProject(
    title: 'Project 3',
    description: 'Project 3.',
  ),
  WorkProject(
    title: 'Project 4',
    description: 'Project 4.',
  ),
];
