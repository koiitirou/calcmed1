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
    routeIds.indexWhere((note) => note.startsWith('/Div_cal'));

class Div_cal extends StatefulWidget {
  const Div_cal({Key? key}) : super(key: key);
  static const routeName = '/Div_cal';

  @override
  State<Div_cal> createState() => _Div_calState();
}

class _Div_calState extends State<Div_cal> {
  TextEditingController _fIt1 = TextEditingController();
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
      _fIt1.text = '';
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
      _fOt3 = _sc1.first ? 60 : 20;
      if ((_fIt1.text.isEmpty || _fIt2.text.isEmpty)) {
        _fSg1 = '';
        _fSg2 = '';
      } else {
        double _fIt1num = double.parse(_fIt1.text);
        double _fIt2num = double.parse(_fIt2.text);
        _fOt1 = ((_fIt1num / _fIt2num) / 60) * _fOt3;
        _fSg1 = _fOt1.toStringAsFixed(0);
        _fOt2 = _fOt1 / 6;
        _fSg2 = _fOt2.toStringAsFixed(0);
        _fOt3 = (_fIt1num / _fIt2num);
        _fSg3 = _fOt3.toStringAsFixed(1);
        _fOt4 = _fIt1num * (24 / _fIt2num);
        _fSg4 = _fOt4.toStringAsFixed(1);
        _fOt5 = (24 / _fIt2num);
        _fSg5 = _fOt5.toStringAsFixed(1);
      }
      /* if ((_fIt1.text.isEmpty ||
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
      } */
      //_fOt1 = _fIt2num / (sqrt(60 / _fIt1num));
      //_fOt2 = _fIt2num / (pow(60 / _fIt1num, 1 / 3));
      //_fOt3 = _fIt2num + 154 * (1 - 60 / _fIt1num);
      //_fOt4 = _fIt2num + 1.75 * (_fIt1num - 60);
      //_fSg2 = _fOt2.toStringAsFixed(0);
      //_fSg3 = _fOt3.toStringAsFixed(0);
      //_fSg4 = _fOt4.toStringAsFixed(0);

      /* if (_fOt1 < 7) {
        _fSg2 = 'A (5～6点) [1]';
      } else if (_fOt1 < 10) {
        _fSg2 = 'B (7～9点) [1]';
      } else {
        _fSg2 = 'C (10～15点) [1]';
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
              children: [
                InpPadding('入力'),
                MySelect1func1wide1(
                    _sc1, '', '小児用', '成人用', '60滴=1ml', '20滴=1ml', _calculate1),
                //MySelectRow3func1(_tc2, 'アルブミン値', '<2.8g/dL', '2.8-3.5g/dL',
                //  '>3.5g/dL', '+3', '+2', '+1', _calculate1),
                //MySelectRow3func1(_tc3, 'PT-INR', '>2.2', '1.7-2.2', '<1.7', '+3',
                //  '+2', '+1', _calculate1),
                //MySelectRow3func1(_tc4, '腹水', '中等量以上(≧3L)', '少量(1-3L)', 'なし',
                //  '+3', '+2', '+1', _calculate1),
                //MySelectRow3func1(_tc5, '肝性脳症', '時に昏睡(Ⅲ以上)', '軽度(Ⅰ, Ⅱ)', 'なし',
                //  '+3', '+2', '+1', _calculate1),
                FormTmp1(_fIt1, '1本(袋)あたりの点滴量', '数値を入力して下さい', '000', 'ml',
                    _calculate1),
                FormTmp1(_fIt2, '1本(袋)あたりの点滴時間', '数値を入力して下さい', '00', 'hr(時間)',
                    _calculate1),
                //CalcButton(_formKey, _calculate1, '計算'),
                //if (_notZero) ...[
                //InpPadding('結果'),

                ResContainer2('1分間の滴下数', _fSg1, '  滴'),
                ResContainer2('10秒間の滴下数', _fSg2, '  滴'),
                ResContainer2('点滴速度', _fSg3, '  ml/hr'),
                ResContainer2('必要な点滴量/1日', _fSg4, '  ml'),
                ResContainer2('必要な点滴の本(袋)数/1日', _fSg5, '  本(袋)'),
                //ResContainer('Hodges式 補正QT間隔', '$_fSg4 msec'),
                //ResContainer('eGFR, 推算糸球体濾過量', '$_egfString mL/min/1.73㎡'),
                //ResContainer('GFR区分', _in_foText),
                //],
                //calcPadding('RR間隔 = 60 / 心拍数'),
                //calcPadding('*Bazzet式 QTc = QT間隔 / √(RR間隔)'),
                //calcPadding('*Fridericia式 QTc = QT間隔/ (RR間隔)^1/3'),
                //calcPadding('*Framingham式 QTc = QT間隔 + 154 x (1 - RR間隔)'),
                //calcPadding('*Hodges式 QTc = QT間隔 + 1.75 x ( (60 / RR間隔) − 60)'),
                //InpPadding('参考文献'),
                //refPadding(
                //    '[1] Child CG, Turcotte JG. Surgery and portal hypertension. Major Probl Clin Surg. 1964;1:1-85.',
                //   'https://pubmed.ncbi.nlm.nih.gov/4950264/'),
              ],
            )),
            adContainer2
          ],
        ),
      ),
    );
  }
}
