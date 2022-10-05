import 'package:app037airportsapi/models/OneRows.dart';
import 'package:app037airportsapi/models/fulldata.dart';
import 'package:app037airportsapi/service/networkservice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "wefiohewufhuewhfxqewmcfqewifb124234322x3r";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic data_1 = "empty";
  List lst = [];
  List list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apilist();
  }

  void _apilist() {
    Network.GET(Network.Api, Network.paramsEmpty()).then((response) => {
          print("javob >>>>> $response <<<<< keldi"),
          _showresponse(response),
        });
  }

  _showresponse(String response) {
    FullData data_2 = Network.parseAll(response);
    lst.addAll(data_2.rows);
    data_1 = data_2.version;
    print(
        " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $data_1 <<<<<<<<<<<<<<<<<<<<<<<<<<<<< ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Api Data"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.yellow.shade100,
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
        child: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (ctx, i) {
            return itemsoflist(lst[i], data_1);
          },
        ),
      ),
    );
  }

  Widget itemsoflist(OneRows onerow, data_1) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
          color: Colors.red.shade500, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(onerow.name.toString()),
          Text(onerow.city.toString()),
          Text(onerow.country.toString()),
          Text(onerow.id.toString()),
          Text(data_1.toString()),
        ],
      ),
    );
  }
}
