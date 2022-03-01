import 'package:flutter/material.dart';
import '../utilises/coin_data.dart';
import 'package:coin_tiker/services/api.dart';
import 'package:coin_tiker/utilises/coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  //parameters
  Map<String, String> cryptoValue = {
    'BTC': '?',
    'ETH': '?',
    'LTC': '?'
  };
  String dropDownValue = 'USD';

  //methods
  List<DropdownMenuItem<String> > getItems(){
    List<DropdownMenuItem<String> > itemsList = [];
    for(int i=0; i<currenciesList.length; i++){
      var item = DropdownMenuItem(child: Text(currenciesList[i]), value: currenciesList[i],);
      itemsList.add(item);
    }
    return itemsList;
  }

  void getLast(String crypto, String cur) async{
    CoinApi btcUsdApi = CoinApi();
    var lastCryptoCur = await btcUsdApi.getLatestPrice(crypto, cur);
    setState((){
      dropDownValue = cur;
      cryptoValue[crypto] = lastCryptoCur['last'].toString();
    });
  }




  @override
  void initState() {
    super.initState();
    getLast('BTC', 'USD');
    getLast('ETH', 'USD');
    getLast('LTC', 'USD');
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String> > dropDownItems = getItems();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('🤑 Coin Ticker'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PriceCard(cryptoValue['BTC'].toString(), 'BTC', dropDownValue),
              PriceCard(cryptoValue['ETH'].toString(), 'ETH', dropDownValue),
              PriceCard(cryptoValue['LTC'].toString(), 'LTC', dropDownValue),
            ],
          ),
          Container(
            height: 75.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: dropDownValue,
              items: dropDownItems,
              onChanged: (value)  {
                getLast('BTC' ,value.toString());
                getLast('ETH' ,value.toString());
                getLast('LTC' ,value.toString());

              },
            ),
          ),
        ],
      ),
    );
  }
}

class PriceCard extends StatelessWidget {
  PriceCard(this.btcCur, this.crypto, this.dropDownValue);
  final String btcCur;
  final String dropDownValue;
  final String crypto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $btcCur $dropDownValue',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
