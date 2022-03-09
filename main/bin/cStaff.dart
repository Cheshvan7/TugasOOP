import 'Function.dart';
import 'cDosen.dart';

class cStaff extends cPegawai with Absen {
  int _tunjanganKehadiran = 0;

  cStaff(String? nama, int nrp, int sks, int gajidasar, int tunjanganpokok)
      : super(nama, nrp, sks, gajidasar, tunjanganpokok);

  get gaji {
    return (gajidasar + tunjanganpokok + _tunjanganKehadiran);
  }
}
