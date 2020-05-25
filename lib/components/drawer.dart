import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.deepPurple.shade900),
              child: SafeArea(
                child: SizedBox(
                  height: 90,
                  child: DrawerHeader(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Icon(Icons.ac_unit,
                              color: Colors.deepPurple.shade900)),
                      title: Text('Suman Shrestha',
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.grey.shade400)),
                      subtitle: Text('Flutter UI Developer',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.grey.shade400)),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
                contentPadding: EdgeInsets.only(left: 25.0),
                title: Text('Wallets & Earnings',
                    style: TextStyle(color: Colors.grey.shade900))),
            MenuItem(
                title: 'Wallet Balance',
                icon: Icons.account_balance_wallet,
                trailing: FlatButton(
                    onPressed: () {},
                    child: Text('Add Money',
                        style: TextStyle(color: Colors.white)),
                    color: Colors.pink)),
            MenuItem(title: "My Earnings", icon: Icons.euro_symbol),
            Divider(),
            ListTile(
                contentPadding: EdgeInsets.only(left: 25.0, bottom: 0),
                title: Text('Others',
                    style: TextStyle(color: Colors.grey.shade900))),
            MenuItem(title: "Requests", icon: Icons.fastfood),
            MenuItem(title: 'Accounts', icon: Icons.calendar_today),
            MenuItem(title: 'Transaction History', icon: Icons.share),
            MenuItem(title: 'Change Language', icon: Icons.language),
            MenuItem(title: 'Chat', icon: Icons.chat),
            MenuItem(title: 'Support', icon: Icons.headset_mic),
            MenuItem(title: 'Rate Us', icon: Icons.star),
            Divider(),
            MenuItem(title: 'Log Out', icon: Icons.do_not_disturb),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;

  final String title;

  final Widget trailing;

  MenuItem({
    Key key,
    this.icon,
    this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        leading: Icon(icon),
        trailing: trailing,
        contentPadding: EdgeInsets.only(left: 25.0, right: 15.0, top: 0.0),
        title: Text(title, style: TextStyle(color: Colors.grey.shade900)));
  }
}
