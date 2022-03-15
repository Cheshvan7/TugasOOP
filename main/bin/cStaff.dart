import 'Function.dart';
import 'cDosen.dart';

class cStaff extends cPegawai with Absen {
  int sisacuti = 12;

  cStaff(
      String? nama, String? nrp, int sks, int gajidasar, int tunjangankehadiran)
      : super(nama, nrp, sks, gajidasar, tunjangankehadiran);

  void setcuti(int n) {
    if (n > sisacuti) {
      print("Jatah Cuti tidak mencukupi");
    } else {
      sisacuti -= n;
    }
  }

  get gaji {
    return (gajidasar + tunjangankehadiran);
  }
}
