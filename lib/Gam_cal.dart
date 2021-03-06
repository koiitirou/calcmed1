import 'package:flutter/material.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';
import 'dart:math' as math;
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
    routeIds.indexWhere((note) => note.startsWith('/Gam_cal'));

class Gam_cal extends StatefulWidget {
  const Gam_cal({Key? key}) : super(key: key);
  static const routeName = '/Gam_cal';

  @override
  State<Gam_cal> createState() => _Gam_calState();
}

class _Gam_calState extends State<Gam_cal> {
  TextEditingController _fIt1 = TextEditingController(text: '50.0');
  TextEditingController _fIt2 = TextEditingController();
  TextEditingController _fIt3 = TextEditingController();
  TextEditingController _fIt4 = TextEditingController();
  TextEditingController _fIt5 = TextEditingController();
  TextEditingController _fIt6 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _tc1 = List.from(_tc0);
  List<bool> _tc2 = List.from(_tc0);
  List<bool> _tc3 = List.from(_tc0);
  List<bool> _tc4 = List.from(_tc0);
  List<bool> _tc5 = List.from(_tc0);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _fSg1 = '';
  String _fSg2 = '';
  String _fSg3 = '';
  String _fSg4 = '';
  String _fSg5 = '';
  String _fSg6 = '';
  double _fOt1 = 0;
  double _fOt2 = 0;
  double _fOt3 = 0;
  double _fOt4 = 0;
  double _fOt5 = 0;
  double _fOt6 = 0;

  bool _notZero = false;

  void _resetFields() {
    setState(() {
      //_formKey = GlobalKey<FormState>();
      //_notZero = false;
      _fIt1.text = '50.0';
      //_fIt1.text = '';
      _fIt2.text = '';
      _fIt3.text = '';
      _fIt4.text = '';
      _fIt5.text = '';
      _fIt6.text = '';
      _sc1 = List.from(_sc0);
      _tc1 = List.from(_tc0);
      _tc2 = List.from(_tc0);
      _tc3 = List.from(_tc0);
      _tc4 = List.from(_tc0);
      _tc5 = List.from(_tc0);
      _fOt1 = 0;
      _fOt2 = 0;
      _fOt3 = 0;
      _fOt4 = 0;
      _fOt5 = 0;
      _fOt6 = 0;
      _fSg1 = '';
      _fSg2 = '';
      _fSg3 = '';
      _fSg4 = '';
      _fSg5 = '';
      _fSg6 = '';
    });
  }

  void _calculate1() {
    //_formKey = GlobalKey<FormState>();

    setState(() {
      //_formKey = GlobalKey<FormState>();
      //_notZero = true;
      if ((_fIt1.text.isEmpty ||
          _fIt2.text.isEmpty ||
          _fIt3.text.isEmpty ||
          _fIt4.text.isEmpty)) {
        _fSg1 = '';
        _fSg2 = '';
        _fSg3 = '';
      } else {
        double _fIt1num = double.parse(_fIt1.text);
        double _fIt2num = double.parse(_fIt2.text);
        double _fIt3num = double.parse(_fIt3.text);
        double _fIt4num = double.parse(_fIt4.text);
        _fOt1 = (((_fIt3num * 1000) / _fIt2num) * (_fIt4num) / _fIt1num) / 60;
        _fSg1 = _fOt1.toStringAsFixed(2);
        _fOt2 = _fIt4num * 24;
        _fSg2 = _fOt2.toStringAsFixed(1);
        _fOt3 = _fOt2 / _fIt2num;
        _fSg3 = _fOt3.toStringAsFixed(1);
      }
      if ((_fIt1.text.isEmpty ||
          _fIt2.text.isEmpty ||
          _fIt3.text.isEmpty ||
          _fIt5.text.isEmpty)) {
        _fSg4 = '';
        _fSg5 = '';
        _fSg6 = '';
      } else {
        double _fIt1num = double.parse(_fIt1.text);
        double _fIt2num = double.parse(_fIt2.text);
        double _fIt3num = double.parse(_fIt3.text);
        double _fIt5num = double.parse(_fIt5.text);
        _fOt4 = ((_fIt5num * 60) * _fIt1num) / ((_fIt3num * 1000) / _fIt2num);

        _fSg4 = _fOt4.toStringAsFixed(2);
        _fOt5 = _fOt4 * 24;
        _fSg5 = _fOt5.toStringAsFixed(1);
        _fOt6 = _fOt5 / _fIt2num;
        _fSg6 = _fOt6.toStringAsFixed(1);
      }
      //_fOt1 = _fIt2num / (sqrt(60 / _fIt1num));
      //_fOt2 = _fIt2num / (pow(60 / _fIt1num, 1 / 3));
      //_fOt3 = _fIt2num + 154 * (1 - 60 / _fIt1num);
      //_fOt4 = _fIt2num + 1.75 * (_fIt1num - 60);
      //_fSg2 = _fOt2.toStringAsFixed(0);
      //_fSg3 = _fOt3.toStringAsFixed(0);
      //_fSg4 = _fOt4.toStringAsFixed(0);

      /* if (_fOt1 < 7) {
        _fSg2 = 'A (5???6???) [1]';
      } else if (_fOt1 < 10) {
        _fSg2 = 'B (7???9???) [1]';
      } else {
        _fSg2 = 'C (10???15???) [1]';
      } */
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
              //key: _formKey,
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: [
                  InpPadding('??????'),
                  //MySelectRow3func1(_tc1, '?????????????????????', '>3mg/dL', '2-3mg/dL',
                  //  '<2mg/dL', '+3', '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc2, '??????????????????', '<2.8g/dL', '2.8-3.5g/dL',
                  //  '>3.5g/dL', '+3', '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc3, 'PT-INR', '>2.2', '1.7-2.2', '<1.7', '+3',
                  //  '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc4, '??????', '???????????????(???3L)', '??????(1-3L)', '??????',
                  //  '+3', '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc5, '????????????', '????????????(?????????)', '??????(???, ???)', '??????',
                  //  '+3', '+2', '+1', _calculate1),
                  FormTmp1(_fIt1, '??????', '??????????????????????????????', '50', 'kg', _calculate1),
                  FormTmp1(_fIt2, '1???????????????????????????', '??????????????????????????????', '000', 'ml',
                      _calculate1),
                  FormTmp1(_fIt3, '1???????????????????????????', '??????????????????????????????', '000', 'mg',
                      _calculate1),
                  //CalcButton(_formKey, _calculate1, '??????'),
                  //if (_notZero) ...[
                  //InpPadding('??????'),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            FormTmp1(_fIt5, '????????', '??????????????????????????????', '0.00',
                                '??g/kg/min', _calculate1),
                            Transform.rotate(
                                angle: math.pi / 2,
                                child: Icon(
                                  Icons.navigate_next,
                                )),
                            ResContainer2('????????????', _fSg4, 'ml/hr'),
                            ResContainer2('???????????????/???', _fSg5, 'ml/???'),
                            ResContainer2('????????????/???', _fSg6, '???/???'),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            FormTmp1(_fIt4, '????????????', '??????????????????????????????', '00.0',
                                'ml/hr', _calculate1),
                            Transform.rotate(
                                angle: math.pi / 2,
                                child: Icon(
                                  Icons.navigate_next,
                                )),
                            ResContainer2('????????', _fSg1, '??g/kg/min'),
                            ResContainer2('???????????????/???', _fSg2, 'ml/???'),
                            ResContainer2('????????????/???', _fSg3, '???/???'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //ResContainer('Framingham??? ??????QT??????', '$_fSg3 msec'),
                  //ResContainer('Hodges??? ??????QT??????', '$_fSg4 msec'),
                  //ResContainer('eGFR, ????????????????????????', '$_egfString mL/min/1.73???'),
                  //ResContainer('GFR??????', _in_foText),
                  //],
                  //calcPadding('RR?????? = 60 / ?????????'),
                  //calcPadding('*Bazzet??? QTc = QT?????? / ???(RR??????)'),
                  //calcPadding('*Fridericia??? QTc = QT??????/ (RR??????)^1/3'),
                  //calcPadding('*Framingham??? QTc = QT?????? + 154 x (1 - RR??????)'),
                  //calcPadding('*Hodges??? QTc = QT?????? + 1.75 x ( (60 / RR??????) ??? 60)'),
                  //InpPadding('????????????'),
                  //refPadding(
                  //    '[1] Child CG, Turcotte JG. Surgery and portal hypertension. Major Probl Clin Surg. 1964;1:1-85.',
                  //   'https://pubmed.ncbi.nlm.nih.gov/4950264/'),
                ],
              ),
            ),
            adContainer2,
          ],
        ),
      ),
    );
  }
}
