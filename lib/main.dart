import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  // URLs
  final String linkedinUrl = 'https://www.linkedin.com/in/fillimon-gebre';
  final String githubUrl = 'https://github.com/kingfillari/ProfileCardApp';
  final String telegramUrl = 'https://t.me/kingfillari';

  // Function to launch URL
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card App',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(height: 20),

                // Name
                Text(
                  'KingFillari',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Profession
                Text(
                  'FULL-STACK DEVELOPER & MOBILE APP DEVELOPER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal[100],
                    letterSpacing: 2.0,
                  ),
                ),

                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(color: Colors.teal.shade100),
                ),

                // Phone Card
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal),
                    title: Text(
                      '+251 914 xx xx xx',
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ),
                ),

                // Email Card
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text(
                      'kingfillari@gmail.com',
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Social Media Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.linked_camera), // or use FontAwesome
                      color: Colors.white,
                      iconSize: 35,
                      onPressed: () => _launchURL(linkedinUrl),
                      tooltip: 'LinkedIn',
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(Icons.code),
                      color: Colors.white,
                      iconSize: 35,
                      onPressed: () => _launchURL(githubUrl),
                      tooltip: 'GitHub',
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(Icons.send),
                      color: Colors.white,
                      iconSize: 35,
                      onPressed: () => _launchURL(telegramUrl),
                      tooltip: 'Telegram',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
