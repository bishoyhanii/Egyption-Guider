import 'package:flutter/material.dart';
import 'package:tourguide/alexendria.dart';
import 'package:tourguide/cairo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      width: 230.0,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(''),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/736x/82/4c/75/824c75d5d8baddac1e3ab99a48b77f36.jpg',
                ),
                fit: BoxFit.fitWidth,
              )),
            ),
            Divider(),
            ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              selectedTileColor: Colors.amber,
              title: Text('Cairo',),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cairo(),
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('Aswan'),
                onTap: () => print('Favorite'),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('Alexendria'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Alexendria(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('Louxor'),
                onTap: () => print('Favorite'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
