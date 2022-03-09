import 'Function.dart';
import 'cPerson.dart';

class cPegawai extends cPerson {
  int _gajiDasar = 0;
  int _tunjanganPokok = 0;
  int _tunjanganKehadiran = 0;

  cPegawai(String? nama, int nrp, int sks, int gajidasar, int tunjanganpokok)
      : super(nama, nrp, sks) {
    _gajiDasar = gajidasar;
    _tunjanganPokok = tunjanganpokok;
  }

  get gajidasar {
    return _gajiDasar;
  }

  get tunjanganpokok {
    return _tunjanganPokok;
  }

  get tunjangankehadiran {
    return _tunjanganKehadiran;
  }
}

class cDosenTetap extends cPegawai with Absen {
  cDosenTetap(String? nama, int nrp, int sks, int gajidasar, int tunjanganpokok)
      : super(nama, nrp, sks, gajidasar, tunjanganpokok);

  get gaji {
    return (gajidasar + tunjanganpokok + tunjangankehadiran + (sks * 40000));
  }
}

class cDosenLB extends cPegawai with Absen {
  cDosenLB(String? nama, int nrp, int sks, int gajidasar, int tunjanganpokok)
      : super(nama, nrp, sks, gajidasar, tunjanganpokok);

  get gaji {
    return (gajidasar + tunjanganpokok + tunjangankehadiran + (sks * 40000));
  }
}

class cDosenTamu extends cPegawai with Absen {
  cDosenTamu(String? nama, int nrp, int sks, int gajidasar, int tunjanganpokok)
      : super(nama, nrp, sks, gajidasar = 0, tunjanganpokok);

  get gaji {
    return (gajidasar + tunjanganpokok + tunjangankehadiran + (sks * 40000));
  }
}
