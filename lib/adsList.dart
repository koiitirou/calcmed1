import 'package:google_mobile_ads/google_mobile_ads.dart' as admob;
import 'package:flutter/material.dart';

//String iAdId1 = 'ca-app-pub-3940256099942544/1033173712'; //test
//String bAdId1 = 'ca-app-pub-7235402962103532/6664840495'; //ios ID honban
//String bAdId1 = 'ca-app-pub-7235402962103532/6259013365'; //android honban
String bAdId1 = 'ca-app-pub-7235402962103532/6664840495'; //ios ID honban
//String bAdId1 = 'ca-app-pub-3940256099942544/6300978111'; //test ID

/* class InterstitialAd1 {
  /// The internal constructor.
  InterstitialAd1._internal();

  /// Returns the singleton instance of [InterstitialAd1].
  static InterstitialAd1 get instance => _singletonInstance;

  /// The singleton instance of this [InterstitialAd1].
  static final _singletonInstance = InterstitialAd1._internal();

  /// The count of load attempt
  int _countLoadAttempt = 0;

  /// The interstitial ad
  admob.InterstitialAd? _interstitialAd;

  /// Returns true if interstitial ad is already loaded, otherwise false.
  bool get isLoaded => _interstitialAd != null;

  /// Returns true if interstitial ad is not loaded, otherwise false.
  bool get isNotLoaded => _interstitialAd == null;

  Future<void> load() async => await admob.InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: const admob.AdRequest(),
        adLoadCallback: admob.InterstitialAdLoadCallback(
          onAdLoaded: (final admob.InterstitialAd interstitialAd) {
            _interstitialAd = interstitialAd;
            _countLoadAttempt = 0;
          },
          onAdFailedToLoad: (final admob.LoadAdError loadAdError) async {
            _interstitialAd = null;
            _countLoadAttempt++;

            if (_countLoadAttempt <= 5) {
              await load();
            }
          },
        ),
      );

  Future<void> show() async {
    if (isNotLoaded) {
      await load();
    }

    if (isLoaded) {
      _interstitialAd!.fullScreenContentCallback =
          admob.FullScreenContentCallback(
        onAdShowedFullScreenContent: (final interstitialAd) {},
        onAdDismissedFullScreenContent: (final interstitialAd) async {
          await interstitialAd.dispose();
        },
        onAdFailedToShowFullScreenContent:
            (final interstitialAd, final adError) async {
          await interstitialAd.dispose();
        },
      );

      await _interstitialAd!.show();
      _interstitialAd = null;

      /// Load next ad.
      await load();
    }
  }
} */

admob.BannerAd Banner1 = admob.BannerAd(
  adUnitId: bAdId1,
  size: admob.AdSize.largeBanner,
  request: admob.AdRequest(),
  listener: admob.BannerAdListener(),
);

///////////////////
//////////////////
admob.BannerAd Rectangle1 = admob.BannerAd(
  adUnitId: bAdId1,
  size: admob.AdSize.mediumRectangle,
  request: admob.AdRequest(),
  listener: admob.BannerAdListener(),
);

//////////////////////
/////////////////////
final admob.BannerAdListener listener1 = admob.BannerAdListener(
  // Called when an ad is successfully received.
  //onAdLoaded: (admob.AdError ad) => print('Ad loaded.'),
  // Called when an ad request failed.
  onAdFailedToLoad: (admob.Ad ad, admob.LoadAdError error) {
    // Dispose the ad here to free resources.
    ad.dispose();
    print('Ad failed to load: $error');
  },
  // Called when an ad opens an overlay that covers the screen.
  onAdOpened: (admob.Ad ad) => print('Ad opened.'),
  // Called when an ad removes an overlay that covers the screen.
  onAdClosed: (admob.Ad ad) => print('Ad closed.'),
  // Called when an impression occurs on the ad.
  onAdImpression: (admob.Ad ad) => print('Ad impression.'),
);

///////////////////
///////////////////
class adContainer1 extends Container {
  @override
  final admob.AdWidget adWidget1;
  final admob.BannerAd myBanner2;
  adContainer1(this.adWidget1, this.myBanner2); // コンストラクタで引数を受け取る
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        alignment: Alignment.center,
        child: adWidget1,
        width: myBanner2.size.width.toDouble(),
        height: myBanner2.size.height.toDouble(),
      ),
    );
  }
}
