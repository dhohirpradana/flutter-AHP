import 'dart:math';
import 'package:ahp_voli/utils/ahp/alternatif_controller.dart';
import 'package:ahp_voli/utils/ahp/tabel_kuadrat_list.dart';
import 'package:ahp_voli/utils/ahp/tabel_perbandingan_list.dart';

class AHP {
  static kuadratMatrixBerpasangan() {
    double sum = 0;
    final int sumK = sqrt(tabelPerbandinganList.length).toInt();
    final int length = tabelPerbandinganList.length;
    for (var index = 0; index < length; index = index + sumK) {
      for (var i = 0; i < sumK; i++) {
        sum = 0;
        for (var ii = 0; ii < sumK; ii++) {
          final double a = (tabelPerbandinganList[index + ii] *
              tabelPerbandinganList[i + ii * sumK.toInt()]);
          sum += a;
        }
        tabelKuadratList[index + i] = sum;
      }
    }
    // print(tabelKuadratList);
    eigenvectorPertama();
  }

  static eigenvectorPertama() {
    List eigenvector = [];
    double total = 0;
    for (var e in tabelKuadratList) {
      total += e;
    }
    // print(total);
    double x = 0;
    final int sumK = sqrt(tabelPerbandinganList.length).toInt();
    final int length = tabelPerbandinganList.length;

    // Eigen vector pertama
    List a = [];
    for (var ii = 0; ii < length; ii = ii + sumK) {
      x = 0;
      for (var i = 0; i < sumK; i++) {
        final y = tabelKuadratList[ii + i];
        x += y;
      }
      a.add(x);
    }
    // print(a);
    for (var e in a) {
      eigenvector.add(e / total);
    }
    kuadratMatrixBerpasangan2(tabelKuadratList);
  }

  static kuadratMatrixBerpasangan2(v) {
    double sum = 0;
    List data = v;
    final int sumK = sqrt(data.length).toInt();
    final int length = data.length;
    for (var index = 0; index < length; index = index + sumK) {
      for (var i = 0; i < sumK; i++) {
        sum = 0;
        for (var ii = 0; ii < sumK; ii++) {
          final double a = (data[index + ii] * data[i + ii * sumK.toInt()]);
          sum += a;
        }
        tabelKuadratList2[index + i] = sum;
      }
    }
    // print(tabelKuadratList);
    eigenVectorKedua(length, sumK, tabelKuadratList2);
  }

  static eigenVectorKedua(
    length,
    int sumK,
    List a,
  ) {
    List b = [];
    List eigenvector = [];
    double x = 0;
    double total = 0;

    for (var e in a) {
      total += e;
    }

    for (var ii = 0; ii < length; ii = ii + sumK) {
      x = 0;
      for (var i = 0; i < sumK; i++) {
        final y = a[ii + i];
        x += y;
      }
      b.add(x);
    }
    // print(b);

    for (var e in b) {
      eigenvector.add(e / total);
    }
    kuadratMatrixBerpasangan3(tabelKuadratList2);
  }

  static kuadratMatrixBerpasangan3(v) {
    double sum = 0;
    List data = v;
    final int sumK = sqrt(data.length).toInt();
    final int length = data.length;
    for (var index = 0; index < length; index = index + sumK) {
      for (var i = 0; i < sumK; i++) {
        sum = 0;
        for (var ii = 0; ii < sumK; ii++) {
          final double a = (data[index + ii] * data[i + ii * sumK.toInt()]);
          sum += a;
        }
        tabelKuadratList3[index + i] = sum;
      }
    }
    // print(tabelKuadratList);
    eigenVectorKetiga(length, sumK, tabelKuadratList3);
  }

  static eigenVectorKetiga(
    length,
    int sumK,
    List a,
  ) {
    List b = [];
    List eigenvector = [];
    double x = 0;
    double total = 0;

    for (var e in a) {
      total += e;
    }

    for (var ii = 0; ii < length; ii = ii + sumK) {
      x = 0;
      for (var i = 0; i < sumK; i++) {
        final y = a[ii + i];
        x += y;
      }
      b.add(x);
    }
    // print(b);

    for (var e in b) {
      eigenvector.add(e / total);
    }

    print(eigenvector);
    // alternatifPerbandingan();
  }

  static alternatifPerbandingan() {
    double sumK1 = 0;
    for (var element in alternatifControllers) {
      sumK1 += int.parse(element.k1.text);
    }
    print(sumK1);
  }
}
