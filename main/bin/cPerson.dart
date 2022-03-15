class cPerson {
  String? _nama;
  String? _nrp;
  int _sks = 2;

  cPerson(this._nama, this._nrp, this._sks);

  void setnama(String nama) {
    _nama = nama;
  }

  void setnrp(String nrp) {
    _nrp = nrp;
  }

  void setsks(int sks) {
    _sks = sks;
  }

  String get nama {
    return _nama!;
  }

  String get nrp {
    return _nrp!;
  }

  int get sks {
    return _sks;
  }
}
