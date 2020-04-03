import 'package:flutter/material.dart';
import 'package:webinarstartupborneo/common/image_asset.dart';
import 'package:webinarstartupborneo/ui/account/account_page.dart';
import 'package:webinarstartupborneo/ui/forum/forum_page.dart';
import 'package:webinarstartupborneo/ui/home/home_page.dart';
import 'package:webinarstartupborneo/ui/myclass/myclass_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudiOn Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoardPage(),
    );
  }
}

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _index = 0;
  List<Widget> listPage = [HomePage(), MyClassPage(), ForumPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: listPage[_index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            print(index);
            _index = index;
          });
        },
        elevation: 20.0,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(icDashboardOff, scale: 10.0),
              activeIcon: Image.asset(icDashboardOn, scale: 10.0),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(icClassOff, scale: 10.0),
              activeIcon: Image.asset(icClassOn, scale: 10.0),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(icForumOff, scale: 10.0),
              activeIcon: Image.asset(icForumOn, scale: 10.0),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(icProfileOff, scale: 10.0),
              activeIcon: Image.asset(icProfileOn, scale: 10.0),
              title: Container(
                height: 0.0,
              )),
        ],
      ),
    );
  }
}
