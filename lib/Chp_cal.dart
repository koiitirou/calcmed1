import 'package:flutter/material.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';

import 'adsList.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

BannerAd myBanner = Banner1;
//BannerAd myBanner2 = Rectangle1;
BannerAdListener listener = listener1;

List<bool> _sc0 = [
  false,
  true,
];

List<bool> _tc0 = [
  false,
  false,
  true,
];

List<String> routeIds = [
  for (int i1 = 0; i1 < Cc1s.Cc1_items.length; i1++) Cc1s.Cc1_items[i1].route_id
];
final int thisRouteId =
    routeIds.indexWhere((note) => note.startsWith('/Chp_cal'));

class Chp_cal extends StatefulWidget {
  const Chp_cal({Key? key}) : super(key: key);
  static const routeName = '/Chp_cal';

  @override
  State<Chp_cal> createState() => _Chp_calState();
}

class _Chp_calState extends State<Chp_cal> {
  TextEditingController fIt1 = TextEditingController();
  TextEditingController fIt2 = TextEditingController();
  TextEditingController fIt3 = TextEditingController();
  TextEditingController fIt4 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _tc1 = List.from(_tc0);
  List<bool> _tc2 = List.from(_tc0);
  List<bool> _tc3 = List.from(_tc0);
  List<bool> _tc4 = List.from(_tc0);
  List<bool> _tc5 = List.from(_tc0);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _fSg1 = '';
  String fOt2Text = '';
  String fOt3Text = '';
  String fOt4Text = '';
  String _fSg2 = '';
  int fOt1 = 0;
  int fOt2 = 0;
  int fOt3 = 0;
  int fOt4 = 0;
  int fOt5 = 0;

  bool _notZero = false;

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      fIt1.text = '';
      fIt2.text = '';
      fIt3.text = '';
      fIt4.text = '';
      _sc1 = List.from(_sc0);
      _tc1 = List.from(_tc0);
      _tc2 = List.from(_tc0);
      _tc3 = List.from(_tc0);
      _tc4 = List.from(_tc0);
      _tc5 = List.from(_tc0);
      fOt1 = 0;
      fOt2 = 0;
      fOt3 = 0;
      fOt4 = 0;
      fOt5 = 0;
    });
  }

  void _calculate1() {
    //_formKey = GlobalKey<FormState>();

    setState(() {
      //_formKey = GlobalKey<FormState>();
      _notZero = true;
      fOt1 = (3 - _tc1.indexWhere((xx) => xx)) +
          (3 - _tc2.indexWhere((xx) => xx)) +
          (3 - _tc3.indexWhere((xx) => xx)) +
          (3 - _tc4.indexWhere((xx) => xx)) +
          (3 - _tc5.indexWhere((xx) => xx));

      //double fIt1num = double.parse(fIt1.text);
      //double fIt2num = double.parse(fIt2.text);
      //double fIt3num = double.parse(fIt3.text);
      //double fIt4num = double.parse(fIt4.text);

      //fOt1 = fIt2num / (sqrt(60 / fIt1num));
      //fOt2 = fIt2num / (pow(60 / fIt1num, 1 / 3));
      //fOt3 = fIt2num + 154 * (1 - 60 / fIt1num);
      //fOt4 = fIt2num + 1.75 * (fIt1num - 60);

      _fSg1 = fOt1.toStringAsFixed(0);
      //fOt2Text = fOt2.toStringAsFixed(0);
      //fOt3Text = fOt3.toStringAsFixed(0);
      //fOt4Text = fOt4.toStringAsFixed(0);

      if (fOt1 < 7) {
        _fSg2 = 'A (5???6???) [1]';
      } else if (fOt1 < 10) {
        _fSg2 = 'B (7???9???) [1]';
      } else {
        _fSg2 = 'C (10???15???) [1]';
      }
    });
  }

  @override
  void initState() {
    myBanner.dispose();
    super.initState();
    _calculate1();
  }

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adContainer2 = adContainer1(adWidget, myBanner);
    return Scaffold(
      //key: _formKey,
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
                key: _formKey,
                child: ListView(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  children: [
                    InpPadding('??????'),
                    MySelectRow3func1(_tc1, '?????????????????????', '>3mg/dL', '2-3mg/dL',
                        '<2mg/dL', '+3', '+2', '+1', _calculate1),
                    MySelectRow3func1(_tc2, '??????????????????', '<2.8g/dL', '2.8-3.5g/dL',
                        '>3.5g/dL', '+3', '+2', '+1', _calculate1),
                    MySelectRow3func1(_tc3, 'PT-INR', '>2.2', '1.7-2.2', '<1.7',
                        '+3', '+2', '+1', _calculate1),
                    MySelectRow3func1(_tc4, '??????', '???????????????(???3L)', '??????(1-3L)',
                        '??????', '+3', '+2', '+1', _calculate1),
                    MySelectRow3func1(_tc5, '????????????', '????????????(?????????)', '??????(???, ???)',
                        '??????', '+3', '+2', '+1', _calculate1),
                    //FormTmp(fIt1, '?????????', '??????????????????????????????', '00', '???/min'),
                    //FormTmp(fIt2, 'QT??????', '??????????????????????????????', '000', 'msec'),
                    //FormTmp(fIt3, 'PT-INR', '??????????????????????????????', '0.00', ''),
                    //FormTmp(fIt4, '????????????????????????', '??????????????????????????????', '000.0', 'mEq/L'),
                    //CalcButton(_formKey, _calculate1, '??????'),
                    //if (_notZero) ...[
                    InpPadding('??????'),
                    ResContainer1('Child-Pugh?????????', '$_fSg1 ???'),
                    ResContainer1('Child-Pugh??????', _fSg2),
                    //ResContainer('Framingham??? ??????QT??????', '$fOt3Text msec'),
                    //ResContainer('Hodges??? ??????QT??????', '$fOt4Text msec'),
                    //ResContainer('eGFR, ????????????????????????', '$_egfString mL/min/1.73???'),
                    //ResContainer('GFR??????', _infoText),
                    //],
                    //calcPadding('RR?????? = 60 / ?????????'),
                    //calcPadding('*Bazzet??? QTc = QT?????? / ???(RR??????)'),
                    //calcPadding('*Fridericia??? QTc = QT??????/ (RR??????)^1/3'),
                    //calcPadding('*Framingham??? QTc = QT?????? + 154 x (1 - RR??????)'),
                    //calcPadding('*Hodges??? QTc = QT?????? + 1.75 x ( (60 / RR??????) ??? 60)'),
                    InpPadding('????????????'),
                    refPadding(
                        '[1] Child CG, Turcotte JG. Surgery and portal hypertension. Major Probl Clin Surg. 1964;1:1-85.',
                        'https://pubmed.ncbi.nlm.nih.gov/4950264/'),
                  ],
                )),
            adContainer2,
          ],
        ),
      ),
    );
  }
}
