import 'dart:io';

  void main(){
    bool benar = true;

    do{
      stdout.write("Masukkan PIN: ");
      var in_pin = stdin.readLineSync();
      int pin = int.parse('$in_pin');

      if(pin == 100299) {
        menu();
        benar = false;
      }
      else {
        print("PIN salah!");
      }
    }while(benar);

    var pilihan;
    do{
      print("Apakah anda ingin melakukan transaksi lain? (Y/N)");
      pilihan = stdin.readLineSync();

      if(pilihan == "Y" || pilihan == "y")
        menu();
      else if(pilihan == "N" || pilihan == "n")
        print("Terima kasih telah menggunakan layanan kami");
      else
        print("Inputan salah");
    }while(pilihan == "Y" || pilihan == "y");
  }

double uang = 0.0, saldo = 0.0, rekening = 0.0;

void menu() {
    print("Selamat Datang"
        "\nPilih Menu"
        "\n1.Setor Tunai"
        "\n2.Tarik Tunai"
        "\n3.Transfer"
        "\n4.Cek Saldo");
    var pilihan = stdin.readLineSync();

    switch(pilihan) {
      case "1":
        print("Masukkan nominal: ");
        var in_nominal = stdin.readLineSync();
        uang = double.parse('$in_nominal');
        saldo += uang;
        print("Transaksi Berhasil!");
        break;
      case "2":
        print("Masukkan nominal: ");
        var in_nominal = stdin.readLineSync();
        uang = double.parse('$in_nominal');
        if(uang <= saldo) {
          saldo -= uang;
          print("Transaksi Berhasil!");
        }
        else {
          print("Uang anda tidak cukup");
        }
        break;
      case "3":
        print("Masukkan nomor rekening: ");
        var in_norek = stdin.readLineSync();
        rekening = double.parse('$in_norek');
        print("Masukkan nominal: ");
        var in_nominal = stdin.readLineSync();
        uang = double.parse('$in_nominal');
        print("Uang sejumlah $uang berhasil ditransfer ke nomor rekening $rekening");
        break;
      case "4":
        print("Jumlah Saldo Anda adalah $saldo");
      break;
      default:
        print("Input yang anda masukkan salah");
    }
  }

