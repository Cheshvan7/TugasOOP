class cPerson {
  String? _nama;
  int _nrp = 0;
  int _sks = 2;

  cPerson(this._nama, this._nrp, this._sks);

  set nama(String nama) {
    _nama = nama;
  }

  set usia(int nrp) {
    _nrp = nrp;
  }

  set umk(int sks) {
    _sks = sks;
  }

  String get nama {
    return _nama!;
  }

  int get usia {
    return _nrp;
  }

  int get sks {
    return _sks;
  }
}
