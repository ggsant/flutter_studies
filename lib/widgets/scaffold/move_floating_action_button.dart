import 'package:flutter/material.dart';

void main() => runApp(const MoveFloatingActionButton());

final _formKey = GlobalKey<FormState>();

class MoveFloatingActionButton extends StatelessWidget {
  const MoveFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Move FloatingActionButton';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.lightBlue,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {},
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          child: const Text('Submit'),
        ),
        floatingActionButtonLocation: CustomFabLoc(),
      ),
    );
  }
}

class CustomFabLoc extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(
      scaffoldGeometry.scaffoldSize.width * .25,
      scaffoldGeometry.scaffoldSize.height - kToolbarHeight * 2,
    );
  }
}
