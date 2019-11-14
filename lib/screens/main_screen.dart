import 'package:flutter/material.dart';
import 'package:library_app/screens/home.dart';
import 'package:library_app/screens/catalog/catalog.dart';
import 'package:library_app/screens/profile.dart';


//clase inicial que contiene navegación
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          Catalog(),
          Home(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 7),
            IconButton(
              icon: Icon(
                Icons.home,
                size: 24.0,
              ),
              color: _page == 1
                  ? Theme.of(context).accentColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(1),
            ),
            IconButton(
              icon: Icon(
                Icons.add_comment,
                size: 24.0,
                color: Theme.of(context).primaryColor,
              ),
              color: _page == 0
                  ? Theme.of(context).accentColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(0),
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 24.0,
              ),
              color: _page == 2
                  ? Theme.of(context).accentColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(2),
            ),
            SizedBox(width: 7),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(
          Icons.book,
        ),
        onPressed: () => _pageController.jumpToPage(0),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
