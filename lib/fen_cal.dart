import 'package:flutter/material.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';
import 'adsList.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

BannerAd myBanner = Banner1;
//BannerAd myBanner2 = Rectangle1;
BannerAdListener listener = listener1;

List<String> routeIds = [
  for (int i1 = 0; i1 < Cc1s.Cc1_items.length; i1++) Cc1s.Cc1_items[i1].route_id
];
final int thisRouteId =
    routeIds.indexWhere((note) => note.startsWith('/Fen_cal'));

class Fen_cal extends StatefulWidget {
  const Fen_cal({Key? key}) : super(key: key);
  static const routeName = '/Fen_cal';

  @override
  State<Fen_cal> createState() => _Fen_calState();
}

class _Fen_calState extends State<Fen_cal> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _outputString = '0.0';
  String _infoText = '';

  double _output = 0.0;
  bool _notZero = false;

  void _resetFields() {
    setState(() {
      _notZero = false;
      _outputString = '';
      _infoText = '';
      controller1.text = "";
      controller2.text = "";
      controller3.text = "";
      controller4.text = "";
    });
  }

  void _calculate1() {
    setState(() {
      if (controller1.text.isEmpty ||
          controller2.text.isEmpty ||
          controller3.text.isEmpty) {
        _outputString = '';
        _infoText = '';
      } else {
        double controllerValue1 = double.parse(controller1.text);
        double controllerValue2 = double.parse(controller2.text);
        double controllerValue3 = double.parse(controller3.text);
        double controllerValue4 = double.parse(controller4.text);
        _output = 100 *
            (controllerValue3 / controllerValue1) /
            (controllerValue4 / controllerValue2);
        _outputString = _output.toStringAsFixed(2);
        _notZero = true;

        if (_output >= 1) {
          _infoText = '????????????????????? ( ???1.0%)';
        } else if (_output < 1) {
          _infoText = "?????????????????? (???1.0%)";
        }
      }
    });
  }

  @override
  void initState() {
    myBanner.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adContainer2 = adContainer1(adWidget, myBanner);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(Cc1s.Cc1_items[thisRouteId].jp_name),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  onPressed: _resetFields, icon: const Icon(Icons.refresh))
            ],
          ),
        ],
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: <Widget>[
                  InpPadding('??????'),
                  FormTmp1(controller1, '????????????????????????', '??????????????????????????????', '000.0',
                      'mEq/L', _calculate1),
                  FormTmp1(controller2, '???????????????????????????', '??????????????????????????????', '0.00',
                      'mg/dL', _calculate1),
                  FormTmp1(controller3, '????????????????????????', '??????????????????????????????', '000.0',
                      'mEq/L', _calculate1),
                  FormTmp1(controller4, '???????????????????????????', '??????????????????????????????', '000.0',
                      'mg/dL', _calculate1),
                  //CalcButton(_formKey, _calculate1, '??????'),
                  InpPadding('??????'),
                  ResContainer2('????????????????????????(FENa) %', _outputString, '  %'),
                  ResContainer1('?????????????????????????????????', _infoText),
                  calcPadding(
                      '*FENa = ( (???????????????????????? / ????????????????????????) / (??????????????????????????? / ???????????????????????????) ) * 100'),
                  InpPadding('????????????'),
                  refPadding(
                      '[1] Espinel CH et al. The FENa test. Use in the differential diagnosis of acute renal failure. JAMA.1976 Aug 9;236(6):579-81.',
                      'https://pubmed.ncbi.nlm.nih.gov/947239/'),
                ],
              ),
            ),
            adContainer2
          ],
        ),
      ),
    );
  }
}
