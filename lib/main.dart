import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tombstone Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    // Here, you would typically load the saved state from local storage or similar.
    // For simplicity, assuming a hardcoded value.
    setState(() {
      _controller.text = 'Type here....';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tombstone Example'),
      ),
      body: Center(
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Enter Text',
          ),
        ),
      ),
    );
  }
}
