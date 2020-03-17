// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HistoryModel historyModelFromJson(String str) => HistoryModel.fromMap(json.decode(str));

String historyModelToJson(HistoryModel data) => json.encode(data.toMap());

class HistoryModel {
    List<Node> nodes;
    List<Link> links;

    HistoryModel({
        @required this.nodes,
        @required this.links,
    });

    factory HistoryModel.fromMap(Map<String, dynamic> json) => HistoryModel(
        nodes: json["nodes"] == null ? null : List<Node>.from(json["nodes"].map((x) => Node.fromMap(x))),
        links: json["links"] == null ? null : List<Link>.from(json["links"].map((x) => Link.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "nodes": nodes == null ? null : List<dynamic>.from(nodes.map((x) => x.toMap())),
        "links": links == null ? null : List<dynamic>.from(links.map((x) => x.toMap())),
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
    int id;
    String kasus;
    String wn;
    String gender;
    int umur;
    String umurtext;
    String pengumuman;
    String penularan;
    String klaster;
    int klasterid;
    int genderid;
    int wnid;
    String status;
    int statusid;
    String rs;
    int rsid;

    Node({
        @required this.id,
        @required this.kasus,
        @required this.wn,
        @required this.gender,
        @required this.umur,
        @required this.umurtext,
        @required this.pengumuman,
        @required this.penularan,
        @required this.klaster,
        @required this.klasterid,
        @required this.genderid,
        @required this.wnid,
        @required this.status,
        @required this.statusid,
        @required this.rs,
        @required this.rsid,
    });

    factory Node.fromMap(Map<String, dynamic> json) => Node(
        id: json["id"] == null ? null : json["id"],
        kasus: json["kasus"] == null ? null : json["kasus"],
        wn: json["wn"] == null ? null : json["wn"],
        gender: json["gender"] == null ? null : json["gender"],
        umur: json["umur"] == null ? null : json["umur"],
        umurtext: json["umurtext"] == null ? null : json["umurtext"],
        pengumuman: json["pengumuman"] == null ? null : json["pengumuman"],
        penularan: json["penularan"] == null ? null : json["penularan"],
        klaster: json["klaster"] == null ? null : json["klaster"],
        klasterid: json["klasterid"] == null ? null : json["klasterid"],
        genderid: json["genderid"] == null ? null : json["genderid"],
        wnid: json["wnid"] == null ? null : json["wnid"],
        status: json["status"] == null ? null : json["status"],
        statusid: json["statusid"] == null ? null : json["statusid"],
        rs: json["rs"] == null ? null : json["rs"],
        rsid: json["rsid"] == null ? null : json["rsid"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "kasus": kasus == null ? null : kasus,
        "wn": wn == null ? null : wn,
        "gender": gender == null ? null : gender,
        "umur": umur == null ? null : umur,
        "umurtext": umurtext == null ? null : umurtext,
        "pengumuman": pengumuman == null ? null : pengumuman,
        "penularan": penularan == null ? null : penularan,
        "klaster": klaster == null ? null : klaster,
        "klasterid": klasterid == null ? null : klasterid,
        "genderid": genderid == null ? null : genderid,
        "wnid": wnid == null ? null : wnid,
        "status": status == null ? null : status,
        "statusid": statusid == null ? null : statusid,
        "rs": rs == null ? null : rs,
        "rsid": rsid == null ? null : rsid,
    };
}

// enum Gender { PEREMPUAN, TIDAK_DIKETAHUI, LAKI_LAKI }

// final genderValues = EnumValues({
//     "Laki-laki": Gender.LAKI_LAKI,
//     "Perempuan": Gender.PEREMPUAN,
//     "Tidak diketahui": Gender.TIDAK_DIKETAHUI
// });

// enum Klaster { JAKARTA, DIAMOND_PRINCESS, KASUS_IMPOR, JAKARTA_IMPOR, SUBKLASTER_3, SUBKLASTER_1, SUBKLASTER_20, TIDAK_DIKETAHUI, ISTANA_NEGARA }

// final klasterValues = EnumValues({
//     "Diamond Princess": Klaster.DIAMOND_PRINCESS,
//     "Istana Negara": Klaster.ISTANA_NEGARA,
//     "Jakarta": Klaster.JAKARTA,
//     "Jakarta-Impor": Klaster.JAKARTA_IMPOR,
//     "Kasus Impor": Klaster.KASUS_IMPOR,
//     "Subklaster 1": Klaster.SUBKLASTER_1,
//     "Subklaster 20": Klaster.SUBKLASTER_20,
//     "Subklaster 3": Klaster.SUBKLASTER_3,
//     "Tidak diketahui": Klaster.TIDAK_DIKETAHUI
// });

// enum Pengumuman { THE_2_MARET_2020, THE_6_MARET_2020, THE_8_MARET_2020, THE_9_MARET_2020, THE_10_MARET_2020, THE_11_MARET_2020, THE_13_MARET_2020, THE_14_MARET_2020, THE_15_MARET_2020, THE_16_MARET_2020, THE_65_MARET_2020 }

// final pengumumanValues = EnumValues({
//     "10 Maret 2020": Pengumuman.THE_10_MARET_2020,
//     "11 Maret 2020": Pengumuman.THE_11_MARET_2020,
//     "13 Maret 2020": Pengumuman.THE_13_MARET_2020,
//     "14 Maret 2020": Pengumuman.THE_14_MARET_2020,
//     "15 Maret 2020": Pengumuman.THE_15_MARET_2020,
//     "16 Maret 2020": Pengumuman.THE_16_MARET_2020,
//     "2 Maret 2020": Pengumuman.THE_2_MARET_2020,
//     "65 Maret 2020": Pengumuman.THE_65_MARET_2020,
//     "6 Maret 2020": Pengumuman.THE_6_MARET_2020,
//     "8 Maret 2020": Pengumuman.THE_8_MARET_2020,
//     "9 Maret 2020": Pengumuman.THE_9_MARET_2020
// });

// enum Rs { RSPI_SULIANTO_SAROSO_JAKARTA, RS_PERSAHABATAN_JAKARTA, TIDAK_DIKETAHUI, RS_SANGLAH_BALI, RS_MOEWARDI_SOLO, RSPAD_GATOT_SUBROTO_JAKARTA }

// final rsValues = EnumValues({
//     "RSPAD Gatot Subroto, Jakarta": Rs.RSPAD_GATOT_SUBROTO_JAKARTA,
//     "RSPI Sulianto Saroso, Jakarta": Rs.RSPI_SULIANTO_SAROSO_JAKARTA,
//     "RS Moewardi, Solo": Rs.RS_MOEWARDI_SOLO,
//     "RS Persahabatan, Jakarta": Rs.RS_PERSAHABATAN_JAKARTA,
//     "RS Sanglah, Bali": Rs.RS_SANGLAH_BALI,
//     "Tidak diketahui": Rs.TIDAK_DIKETAHUI
// });

// enum Status { SEMBUH, DALAM_PERAWATAN, MENINGGAL_DUNIA, TIDAK_DIKETAHUI }

// final statusValues = EnumValues({
//     "Dalam perawatan": Status.DALAM_PERAWATAN,
//     "Meninggal dunia": Status.MENINGGAL_DUNIA,
//     "Sembuh": Status.SEMBUH,
//     "Tidak diketahui": Status.TIDAK_DIKETAHUI
// });

// enum Wn { WNI, WNA, TIDAK_DIKETAHUI }

// final wnValues = EnumValues({
//     "Tidak diketahui": Wn.TIDAK_DIKETAHUI,
//     "WNA": Wn.WNA,
//     "WNI": Wn.WNI
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
