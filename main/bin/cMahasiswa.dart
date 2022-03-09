import 'dart:html';

import 'cPerson.dart';

class cMahasiswa extends cPerson {
  int ips = 0;
  int ipk = 0;

  String status = "Aktif";

  cMahasiswa(String? nama, int nrp, int sks) : super(nama, nrp, sks);
}
