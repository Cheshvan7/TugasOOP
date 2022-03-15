import 'dart:io';

import 'cDosen.dart';
import 'cMahasiswa.dart';
import 'cStaff.dart';

void main(List<String> arguments) {
  int menu;

  stdout.write("Tunjangan = ");
  int tunjangan = int.parse(stdin.readLineSync()!);

  if (tunjangan < 0) {
    int tunjangan = int.parse(stdin.readLineSync()!);
  }

  cMahasiswa mahasiswa = cMahasiswa("Rico Yulianto", "C14190091", 0);
  cDosenTetap dosentetap =
      cDosenTetap("Agus", "D000001", 2, 5000000, tunjangan);

  cDosenLB dosenluarbiasa = cDosenLB("Budi", "D000002", 2, 5000000, 0);

  cDosenTamu dosentm = cDosenTamu("Amir", "D000003", 2, 0, tunjangan);

  cStaff staf = cStaff("Budiono", "S000001", 0, 4000000, tunjangan);

  while (true) {
    print("1. Mahasiswa\n2. Dosen\n3. Staff\n4. Exit");
    stdout.write("Masukkan Menu = ");
    menu = int.parse(stdin.readLineSync()!);

    if (menu == 1) {
      int menumhs;

      while (true) {
        print(
            "1. Ambil SKS\n2. Lihat SKS\n3. Input IPS\n4. Lihat IPK\n5. Ubah Status (Cuti/Aktif)\n6. Exit");
        stdout.write("Masukkan Menu = ");
        menumhs = int.parse(stdin.readLineSync()!);

        if (menumhs == 1) {
          int sks;

          stdout.write("SKS = ");
          sks = int.parse(stdin.readLineSync()!);

          while (true) {
            if (sks > 24) {
              stdout.write("SKS = ");
              sks = int.parse(stdin.readLineSync()!);
            } else if (sks < 2) {
              stdout.write("SKS = ");
              sks = int.parse(stdin.readLineSync()!);
            } else {
              mahasiswa.setsks(sks);
              break;
            }
          }
        } else if (menumhs == 2) {
          print("SKS = ${mahasiswa.sks}");
        } else if (menumhs == 3) {
          double ips;

          ips = double.parse(stdin.readLineSync()!);

          mahasiswa.setips(ips);
        } else if (menumhs == 4) {
          print("IPK = ${mahasiswa.ipk}");
        } else if (menumhs == 5) {
          print("1. Aktif\n2. Cuti");
          int stats = int.parse(stdin.readLineSync()!);

          if (stats == 1) {
            mahasiswa.setstatus("Aktif");
          } else {
            mahasiswa.setstatus("Cuti");
          }
        } else if (menumhs == 6) {
          break;
        }
      }
    } else if (menu == 2) {
      int menudosen;
      while (true) {
        print("1. Dosen Tetap\n2. Dosen LB\n3. Dosen Tamu\n4. Exit");
        stdout.write("Masukkan Menu = ");
        menudosen = int.parse(stdin.readLineSync()!);

        if (menudosen == 1) {
          int dosenttp;

          while (true) {
            print(
                "1. Input SKS Ampu\n2. Lihat Gaji\n3. Lihat SKS Ampu\n4. Exit");

            dosenttp = int.parse(stdin.readLineSync()!);

            if (dosenttp == 1) {
              int sks = int.parse(stdin.readLineSync()!);

              dosentetap.setsks(sks);
            } else if (dosenttp == 2) {
              print("Gaji = ${dosentetap.gaji}");
            } else if (dosenttp == 3) {
              print("SKS = ${dosentetap.sks}");
            } else if (dosenttp == 4) {
              break;
            }
          }
        } else if (menudosen == 2) {
          int dosenlb;

          while (true) {
            print(
                "1. Input SKS Ampu\n2. Lihat Gaji\n3. Lihat SKS Ampu\n4. Exit");
            stdout.write("Masukkan Menu = ");
            dosenlb = int.parse(stdin.readLineSync()!);

            if (dosenlb == 1) {
              int sks = int.parse(stdin.readLineSync()!);

              dosenluarbiasa.setsks(sks);
            } else if (dosenlb == 2) {
              print("Gaji = ${dosenluarbiasa.gaji}");
            } else if (dosenlb == 3) {
              print("SKS = ${dosenluarbiasa.sks}");
            } else if (dosenlb == 4) {
              break;
            }
          }
        } else if (menudosen == 3) {
          int dosentamu;

          while (true) {
            print(
                "1. Input SKS Ampu\n2. Lihat Gaji\n3. Lihat SKS Ampu\n4. Exit");
            stdout.write("Masukkan Menu = ");
            dosentamu = int.parse(stdin.readLineSync()!);

            if (dosentamu == 1) {
              int sks = int.parse(stdin.readLineSync()!);
              dosentm.setsks(sks);
            } else if (dosentamu == 2) {
              print("Gaji = ${dosentm.gaji}");
            } else if (dosentamu == 3) {
              print("SKS = ${dosentm.sks}");
            } else if (dosentamu == 4) {
              break;
            }
          }
        } else if (menudosen == 4) {
          break;
        }
      }
    } else if (menu == 3) {
      int staff;

      while (true) {
        print("1. Absen\n2. Lihat Gaji\n3. Cuti\n4. Exit");
        stdout.write("Masukkan Menu = ");
        staff = int.parse(stdin.readLineSync()!);

        if (staff == 1) {
          staf.absen();
        } else if (staff == 2) {
          print("Gaji = ${staf.gaji}");
        } else if (staff == 3) {
          int cuti = int.parse(stdin.readLineSync()!);

          staf.setcuti(cuti);
        } else if (staff == 4) {
          break;
        }
      }
    } else if (menu == 4) {
      break;
    }
  }
}
