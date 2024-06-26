import 'package:flutter/material.dart';
import 'pantalla01.dart';
import 'pantalla02.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Pantalla01();
      case 1:
        return Pantalla02(
          cedula: '',
          nombre: '',
          sueldoNeto: '',
        );
    }
  }

  _onSelectItem(int pos){
    Navigator.of(context).pop();
    setState(() {
       _selectDrawerItem = pos;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Import'),
              onTap: () {
                _onSelectItem(0);

              },
            ),
            ListTile(
              title: Text('Import'),
              onTap: () {
                
                _onSelectItem(1);

              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
