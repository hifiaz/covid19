import 'package:http/http.dart';

class ApiServices {
  final String baseUrl = "https://covid19.mathdro.id";
  final String historyUrl = "https://louislugas.github.io/covid_19_cluster/json/kasus-corona-indonesia.json";
  Client client = Client();
}
