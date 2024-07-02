import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    TreatmentPage(),
    PlaceholderPage(title: 'Heart'),
    PlaceholderPage(title: 'Chat'),
    PlaceholderPage(title: 'Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Fav'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
             label: 'Chat'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
             label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}

class TreatmentPage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
  String selectedButton = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Human',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Image.asset(
                'assets/Frame 3860.png', 
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Find best vaccine treatment',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TreatmentButton(
                    text: 'Vaccine',
                    isSelected: selectedButton == 'Vaccine',
                    onPressed: () {
                      setState(() {
                        selectedButton = 'Vaccine';
                      });
                    },
                  ),
                  TreatmentButton(
                    text: 'Surgery',
                    isSelected: selectedButton == 'Surgery',
                    onPressed: () {
                      setState(() {
                        selectedButton = 'Surgery';
                      });
                    },
                  ),
                  TreatmentButton(
                    text: 'Spa & Treatment',
                    isSelected: selectedButton == 'Spa & Treatment',
                    onPressed: () {
                      setState(() {
                        selectedButton = 'Spa & Treatment';
                      });
                    },
                  ),
                  TreatmentButton(
                    text: 'Consultation',
                    isSelected: selectedButton == 'Consultation',
                    onPressed: () {
                      setState(() {
                        selectedButton = 'Consultation';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Frame 3860.png', 
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 16.0),
                          Text('Text beside image'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Frame 3860.png', 
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 16.0),
                          Text('Text beside image'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TreatmentButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const TreatmentButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: Text(text),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final String title;

  const PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Empty page for $title'),
      ),
    );
  }
}
