import 'package:covid19/providers/history_provider.dart';
import 'package:covid19/utilities/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatelessWidget {
  colorStatus(status) {
    if (status == 'Sembuh') {
      return AppStyle.txg;
    } else {
      return AppStyle.txr;
    }
  }

  @override
  Widget build(BuildContext context) {
    var province = Provider.of<HistoryProvider>(context).history;
    return Scaffold(
      appBar: AppBar(
        title: Text('History Kasus di Indonesia'),
        backgroundColor: AppStyle.bg,
      ),
      body: Container(
          color: AppStyle.bg,
          padding: EdgeInsets.all(15),
          child: province.nodes != null
              ? ListView(
                  children: province.nodes
                      .map((val) => Card(
                          color: AppStyle.bgl,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text(
                                      '${val.kasus} ${val.provinsi},${val.wn}',
                                      style: AppStyle.stdtw),
                                  subtitle: Text(val.rs, style: AppStyle.stdtr),
                                  trailing: Text(
                                    val.status,
                                    style: TextStyle(
                                      color: colorStatus(val.status),
                                    ),
                                  ),
                                ),
                                Text('${val.gender} ${val.umurtext}',
                                    style: AppStyle.stdtw),
                                Text("Resmi di diagnosa pada ${val.pengumuman}",
                                    style: AppStyle.stdtw),
                                Text(val.penularan, style: AppStyle.stdtw),
                              ],
                            ),
                          )))
                      .toList(),
                )
              : Center(
                  child: Text('No Data'),
                )),
    );
  }
}
