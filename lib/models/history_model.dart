// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HistoryModel historyModelFromJson(String str) =>
    HistoryModel.fromMap(json.decode(str));

String historyModelToJson(HistoryModel data) => json.encode(data.toMap());

class HistoryModel {
  List<Node> nodes;
  List<Link> links;

  HistoryModel({
    @required this.nodes,
    @required this.links,
  });

  factory HistoryModel.fromMap(Map<String, dynamic> json) => HistoryModel(
        nodes: json["nodes"] == null
            ? null
            : List<Node>.from(json["nodes"].map((x) => Node.fromMap(x))),
        links: json["links"] == null
            ? null
            : List<Link>.from(json["links"].map((x) => Link.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "nodes": nodes == null
            ? null
            : List<dynamic>.from(nodes.map((x) => x.toMap())),
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toMap())),
      };
}

class Link {
  int source;
  int target;

  Link({
    @required this.source,
    @required this.target,
  });

  factory Link.fromMap(Map<String, dynamic> json) => Link(
        source: json["source"] == null ? null : json["source"],
        target: json["target"] == null ? null : json["target"],
      );

  Map<String, dynamic> toMap() => {
        "source": source == null ? null : source,
        "target": target == null ? null : target,
      };
}

class Node {
  String id;
  String kasus;
  String provinsi;
  String provinsiid;
  String umur;
  String umurtext;
  String gender;
  String genderid;
  String status;
  String statusid;
  String wn;
  String wnid;
  String pengumuman;
  String penularan;
  String rs;
  String rsid;

  Node({
    @required this.id,
    @required this.kasus,
    @required this.provinsi,
    @required this.provinsiid,
    @required this.umur,
    @required this.umurtext,
    @required this.gender,
    @required this.genderid,
    @required this.status,
    @required this.statusid,
    @required this.wn,
    @required this.wnid,
    @required this.pengumuman,
    @required this.penularan,
    @required this.rs,
    @required this.rsid,
  });

  factory Node.fromMap(Map<String, dynamic> json) => Node(
        id: json["id"] == null ? null : json["id"],
        kasus: json["kasus"] == null ? null : json["kasus"],
        provinsi: json["provinsi"] == null ? null : json["provinsi"],
        provinsiid: json["provinsiid"] == null ? null : json["provinsiid"],
        umur: json["umur"] == null ? null : json["umur"],
        umurtext: json["umurtext"] == null ? null : json["umurtext"],
        gender: json["gender"] == null ? null : json["gender"],
        genderid: json["genderid"] == null ? null : json["genderid"],
        status: json["status"] == null ? null : json["status"],
        statusid: json["statusid"] == null ? null : json["statusid"],
        wn: json["wn"] == null ? null : json["wn"],
        wnid: json["wnid"] == null ? null : json["wnid"],
        pengumuman: json["pengumuman"] == null ? null : json["pengumuman"],
        penularan: json["penularan"] == null ? null : json["penularan"],
        rs: json["rs"] == null ? null : json["rs"],
        rsid: json["rsid"] == null ? null : json["rsid"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "kasus": kasus == null ? null : kasus,
        "provinsi": provinsi == null ? null : provinsi,
        "provinsiid": provinsiid == null ? null : provinsiid,
        "umur": umur == null ? null : umur,
        "umurtext": umurtext == null ? null : umurtext,
        "gender": gender == null ? null : gender,
        "genderid": genderid == null ? null : genderid,
        "status": status == null ? null : status,
        "statusid": statusid == null ? null : statusid,
        "wn": wn == null ? null : wn,
        "wnid": wnid == null ? null : wnid,
        "pengumuman": pengumuman == null ? null : pengumuman,
        "penularan": penularan == null ? null : penularan,
        "rs": rs == null ? null : rs,
        "rsid": rsid == null ? null : rsid,
      };
}
