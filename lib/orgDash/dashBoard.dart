import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late List<DocumentSnapshot> _users = [];

  Future<void> _refreshData() async {
    // Retrieve data from Firestore and store it in _users list
    final querySnapshot = await FirebaseFirestore.instance.collection('Users').get();
    setState(() {
      _users = querySnapshot.docs;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: _users.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _users.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_users[index]['username']),
                    subtitle: Text(_users[index]['email']),
                    trailing: Text(_users[index]['password']),
                  );
                },
              ),
      ),
    );
  }
}
