import 'cPerson.dart';

class cMahasiswa extends cPerson {
  double _ips = 0;
  double _ipk = 0;

  String _status = "Aktif";

  cMahasiswa(String? nama, String nrp, int sks) : super(nama, nrp, sks);

  void setips(double n) {
    _ips = n;

    setipk(n);
  }

  void setipk(double n) {
    _ipk = n;
  }

  void setstatus(String n) {
    _status = n;
  }

  double get ips {
    return _ips;
  }

  double get ipk {
    return _ipk;
  }

  String get status {
    return _status;
  }
}
