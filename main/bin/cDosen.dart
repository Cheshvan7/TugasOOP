import 'Function.dart';
import 'cPerson.dart';

class cPegawai extends cPerson {
  int _gajiDasar = 5000000;
  int? _tunjanganKehadiran;

  cPegawai(String? nama, String? nrp, int sks, this._gajiDasar,
      this._tunjanganKehadiran)
      : super(nama, nrp, sks);

  get gajidasar {
    return _gajiDasar;
  }

  get tunjangankehadiran {
    return _tunjanganKehadiran;
  }
}

class cDosenTetap extends cPegawai with Absen {
  cDosenTetap(String? nama, String? nrp, int sks, int gajidasar,
      int? tunjangankehadiran)
      : super(nama, nrp, sks, gajidasar, tunjangankehadiran);

  get gaji {
    return (gajidasar + tunjangankehadiran + (sks * 40000));
  }
}

class cDosenLB extends cPegawai with Absen {
  cDosenLB(String? nama, String? nrp, int sks, int gajidasar,
      int? tunjangankehadiran)
      : super(nama, nrp, sks, gajidasar, tunjangankehadiran);

  get gaji {
    return (gajidasar + (sks * 40000));
  }
}

class cDosenTamu extends cPegawai with Absen {
  cDosenTamu(String? nama, String? nrp, int sks, int gajidasar,
      int? tunjangankehadiran)
      : super(nama, nrp, sks, gajidasar = 0, tunjangankehadiran);

  get gaji {
    return (tunjangankehadiran + (sks * 40000));
  }
}
