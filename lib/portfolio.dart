import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(
            fontFamily: 'Pacifico', // Use a custom font for the title
          ),
        ),
        backgroundColor: Colors.black54,
        centerTitle: true, // Custom app bar color
      ),
      body: ListView.builder(
        itemCount: portfolioItems.length,
        itemBuilder: (context, index) {
          final item = portfolioItems[index];
          return Card(
            margin: EdgeInsets.all(16.0),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333), // Custom text color
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF666666), // Custom text color
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement navigation to the portfolio item details page
                      // You can use Navigator.push to navigate to a details page.
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54, // Custom button color
                      onPrimary:
                          Colors.white, // Custom text color for the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    child: Text('Read More'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PortfolioItem {
  final String title;
  final String description;
  final String imageUrl;

  PortfolioItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

final List<PortfolioItem> portfolioItems = [
  PortfolioItem(
    title: 'Project 1',
    description: 'Description of Project 1. This project was...',
    imageUrl:
        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FC4E12AQG2pj4JkZG0Yw%2Farticle-cover_image-shrink_600_2000%2F0%2F1520115601955%3Fe%3D2147483647%26v%3Dbeta%26t%3D15dJ3ErnJfshcaCF1pn0x_PZO4-UeIeYayT1JR_1HY8&tbnid=LrkLUYeSsicRXM&vet=12ahUKEwjWt4b2iNOBAxXub2wGHaTnAOsQMygAegQIARBT..i&imgrefurl=https%3A%2F%2Fwww.linkedin.com%2Fpulse%2Fseven-key-characteristics-project-stanley-epstein&docid=dqhro_MjB9ro8M&w=698&h=400&q=project&ved=2ahUKEwjWt4b2iNOBAxXub2wGHaTnAOsQMygAegQIARBT', // Replace with your image URL
  ),
  PortfolioItem(
    title: 'Project 2',
    description: 'Description of Project 2. This project involved...',
    imageUrl:
        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-vector%2Fteam-starting-project_74855-4818.jpg%3Fq%3D10%26h%3D200&tbnid=2cUbA_VVql2czM&vet=12ahUKEwi-ye-KidOBAxUaa2wGHSZlDOIQMygUegUIARCFAQ..i&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fproject-launch&docid=El8X5l0kUQQImM&w=360&h=200&q=launch%20project&ved=2ahUKEwi-ye-KidOBAxUaa2wGHSZlDOIQMygUegUIARCFAQ', // Replace with your image URL
  ),
  // Add more portfolio items with image URLs as needed
];
