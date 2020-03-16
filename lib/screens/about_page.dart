import 'package:covid19/utilities/app_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: AppStyle.bg,
      ),
      body: Container(
        color: AppStyle.bg,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('Mathdroid'),
                subtitle: Text('Rest Api'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _launchURL('https://github.com/mathdroid/covid-19-api');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Hifiaz'),
                subtitle: Text('Creator'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _launchURL('https://twitter.com/HiFiaz');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
