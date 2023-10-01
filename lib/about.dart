import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text('About Me'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'lib/image/99040004.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Name: Sabbira Sultana',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'About Me:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Passionate on Cyber Security ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (context) {
                      return const Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fdac151-1.fna.fbcdn.net/v/t39.30808-6/242257019_10158695302027203_6143676823452415142_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGUwrMD4bKvnV_cmB6Jq9jM_EobJss2eiH8ShsmyzZ6IYWwkTOmRvL-ARGLxALdKGOTIea5d7gjsijfDdarZT1y&_nc_ohc=QOMcgSYullMAX9700K0&_nc_ht=scontent.fdac151-1.fna&oh=00_AfCvgga348DtiLhbUKqZTST1p_yghoGJz-cfyfC_JNGKkA&oe=651DC14D'),
                            ),
                            title: Text(
                              'Daffodil International University',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Bsc in CSE'),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D511187007856975&tbnid=y4bm_RIuEOcusM&vet=12ahUKEwicqZL5-9KBAxUPm2MGHcfMByQQMygCegQIARBM..i&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fdr.aramic%2F&docid=-9fwVa13KMSPMM&w=1080&h=810&q=dr%20abdur%20razzak%20municipal%20college&ved=2ahUKEwicqZL5-9KBAxUPm2MGHcfMByQQMygCegQIARBM'),
                            ),
                            title: Text(
                              'Dr.Abdur Razzak Municipal Collage,Jashore',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('2018: HSC'),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbd.top10place.com%2Fgovt-girls-high-school---momin-girlsjessore-129711081.html&psig=AOvVaw2OhVo6nICu6HH_N4dvi2-9&ust=1696184919715000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCICQuK_70oEDFQAAAAAdAAAAABAE'),
                            ),
                            title: Text(
                              'Govt Girls High School ,Jashore',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('2016: SSC'),
                          ),
                        ],
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Background color
                onPrimary: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                ),
              ),
              child: const Text(
                'Education',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Contact Me:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            const Text(
              'Email:sultana15-14575@diu.edu.bd\nPhone: 01746696185',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
