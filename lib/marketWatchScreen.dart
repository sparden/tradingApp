import 'package:flutter/material.dart';

class MarketWatchScreen extends StatefulWidget {
  const MarketWatchScreen({Key key}) : super(key: key);

  @override
  _MarketWatchScreenState createState() => _MarketWatchScreenState();
}

class _MarketWatchScreenState extends State<MarketWatchScreen> {
  final _formKey = GlobalKey<FormState>();
  List stocks = [
    {
      "name": "JPASSOCIAT",
      "id": 11460,
      "exchange": "NSE",
      "current_price": 55.3
    },
    {
      "name": "ACC",
      "id": 22,
      "exchange": "NSE",
      "current_price": 35.6
    },
    {
      "name": "Nifty 50",
      "id": 26000,
      "exchange": "NSE",
      "current_price": 556
    },
    {
      "name": "HDFCAMC",
      "id": 4244,
      "exchange": "NSE",
      "current_price": 45
    },
    {
      "name": "HDFC",
      "id": 1330,
      "exchange": "NSE",
      "current_price": 123.5
    },
    {
      "name": "SBILIFE",
      "id": 21808,
      "exchange": "NSE",
      "current_price": 453
    },
    {
      "name": "SBIN",
      "id": 3045,
      "exchange": "NSE",
      "current_price": 543
    },
    {
      "name": "USDINR APR FUT",
      "id": 2794,
      "exchange": "CDS",
      "current_price": 66
    },
    {
      "name": "INFY",
      "id": 1594,
      "exchange": "NSE",
      "current_price": 765
    },
    {
      "name": "USDINR AUG FUT",
      "id": 3692,
      "exchange": "CDS",
      "current_price": 996
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market watch'),
      ),
      body: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index) {
          final stock = stocks[index];

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                     padding: EdgeInsets.only(left: 5.0),
                     child: Row(
                       children: [
                         Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
          showDialog(
          context: context,
          builder: (BuildContext context) {
          return AlertDialog(
          content: Stack(
          clipBehavior: Clip.none, children: <Widget>[
          Positioned(
          right: -40.0,
          top: -40.0,
          child: InkResponse(
          onTap: () {
          Navigator.of(context).pop();
          },
          child: CircleAvatar(
          child: Icon(Icons.close),
          backgroundColor: Colors.red,
          ),
          ),
          ),
          Form(
          key: _formKey,
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
             decoration: InputDecoration(
               labelText: 'Quantity',
               hintText: 'Quantity',
             ),
          ),
          ),
          Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Order Type',
              hintText: 'Order Type',
            ),
          ),
          ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Price',
                  hintText: 'Price',
                ),
              ),
            ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
          child: Text('Confirm'),
          onPressed: () {
          if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
          }
          
          },
          ),
          )
          ],
          ),
          ),
          ],
          ),
          );
          },
          );
          },
                                    child: Text('Buy'),
                                ),
                               SizedBox(
                                 height: 5,
                               ),
                               ElevatedButton(
                                    onPressed: (){},
                                    child: Text('Sell',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    )
                                ),
                              ],
                            ),
                       ],
                     ),
                   ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("${stock['name']}", style: TextStyle(color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500)),
                                Text("${stock['id']}",
                                    style: TextStyle(color: Colors.grey[500], fontSize: 20)),
                              ]),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Row(
                        children: [
                          Column(children: <Widget>[
                            Text("\$${stock['current_price']}", style: TextStyle(color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500)),
                            Container(
                              width: 75,
                              child: Text("${stock['exchange']}", style: TextStyle(color: Colors.white)),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red
                              ),
                            )
                          ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              Divider(
                thickness: 3,
              )
            ],
          );
        },
      ),
    );
  }
}
