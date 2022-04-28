import 'package:yasambeklentisi/user_data.dart';

class Hesap {
  UserData _userData;
  Hesap(this._userData);

  double hesapla() {
    double sonuc;
    sonuc = 85 - (_userData.icilenSigara) + (_userData.sporGunu);
    int boy = _userData.boy ^ 2;
    double vkindeksi = _userData.kilo / boy;

    if (vkindeksi <= 18) {
      sonuc += -3;
    } else if (vkindeksi > 18 && vkindeksi <= 25) {
      sonuc += 4;
    } else if (vkindeksi > 25 && vkindeksi <= 30) {
      sonuc -= 2;
    } else if (vkindeksi > 30 && vkindeksi <= 40) {
      sonuc -= 6;
    } else if (vkindeksi > 40) {
      sonuc -= 6 + (_userData.kilo / 10);
    }

    if (_userData.seciliCinsiyet == "KADIN") {
      sonuc += 3;
    }
    return sonuc;
  }
}
