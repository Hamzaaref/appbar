import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: HomeScreen(),
  ); }
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) =>DefaultTabController(
    length: 4,
    child: Scaffold(

      appBar: AppBar(
        title: Text("Appbar"),
        titleSpacing: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {} ,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink,Colors.lightBlueAccent],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          indicatorColor: Colors.yellowAccent,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home'),
            Tab(icon: Icon(Icons.list_alt),text: 'Feed'),
            Tab(icon: Icon(Icons.person),text: 'profile'),
            Tab(icon: Icon(Icons.settings),text: 'settings'),


          ],
        ),
      ),
    ),
  );


}