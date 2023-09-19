import 'package:flutter/material.dart';
import 'electronicspage.dart';
import 'otherspage.dart';

class ProfilePage extends StatelessWidget {
  final String name = "Akshit Anand";
  final String rollNo = "12345";
  final String phoneNumber = "99999999";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $name!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(
              title: Text('Name: $name'),
              subtitle: Text('Roll No: $rollNo'),
            ),
            ListTile(
              title: Text('Phone Number: $phoneNumber'),
            ),
          ],
        ),
      ),
    );
  }
}

class LostAndFoundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost & Found',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/lost': (context) => LostItemPage(),
        '/found': (context) => FoundItemPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lost & Found App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Did you lose something or find something?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lost');
              },
              child: Text('I Lost Something'),
            ),
            SizedBox(height: 10), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/found');
              },
              child: Text('I Found Something'),
            ),
          ],
        ),
      ),
    );
  }
}

class LostItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Lost Item'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select the category of the lost item:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('ID Cards'),
                    onTap: () {
                      // Handle selection of ID Cards category
                    },
                  ),
                  ListTile(
                    title: Text('Documents'),
                    onTap: () {
                      // Handle selection of Documents category
                    },
                  ),
                  ListTile(
                    title: Text('Electronics'),
                    onTap: () {
                      // Handle selection of Electronics category
                    },
                  ),
                  ListTile(
                    title: Text('Clothes'),
                    onTap: () {
                      // Handle selection of Clothes category
                    },
                  ),
                  ListTile(
                    title: Text('Others'),
                    onTap: () {
                      // Handle selection of Others category
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoundItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Found Item'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select the category of the found item:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('ID Cards'),
                    onTap: () {
                      // Handle selection of ID Cards category
                    },
                  ),
                  ListTile(
                    title: Text('Documents'),
                    onTap: () {
                      // Handle selection of Documents category
                    },
                  ),
                  ListTile(
                    title: Text('Electronics'),
                    onTap: () {
                      // Handle selection of Electronics category
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ElectronicsPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Clothes'),
                    onTap: () {
                      // Handle selection of Clothes category
                    },
                  ),
                  ListTile(
                    title: Text('Others'),
                    onTap: () {
                      // Handle selection of Others category
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OthersPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
