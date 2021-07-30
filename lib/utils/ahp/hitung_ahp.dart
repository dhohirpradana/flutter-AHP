import 'dart:math';
import 'package:ahp_voli/utils/ahp/alternatif_controller.dart';
import 'package:ahp_voli/utils/ahp/bobot_alternatif_list.dart';
import 'package:ahp_voli/utils/ahp/bobot_alternatif_model.dart';
import 'package:ahp_voli/utils/ahp/final_result_list.dart';
import 'package:ahp_voli/utils/ahp/final_result_model.dart';
import 'package:ahp_voli/utils/ahp/tabel_kuadrat_list.dart';
import 'package:ahp_voli/utils/ahp/tabel_perbandingan_list.dart';

import 'eigen_vector._list.dart';

class AHP {
  static Future<void> kuadratMatrixBerpasangan() async {
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
    a.clear();
    for (var ii = 0; ii < length; ii = ii + sumK) {
      x = 0;
      for (var i = 0; i < sumK; i++) {
        final y = tabelKuadratList[ii + i];
        x += y;
      }
      a.add(x);
    }
    // print(a);
    eigenVectorList.clear();
    for (var e in a) {
      eigenVectorList.add(e / total);
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
    double x = 0;
    double total = 0;

    for (var e in a) {
      total += e;
    }

    b.clear();
    for (var ii = 0; ii < length; ii = ii + sumK) {
      x = 0;
      for (var i = 0; i < sumK; i++) {
        final y = a[ii + i];
        x += y;
      }
      b.add(x);
    }
    // print(b);

    eigenVectorList.clear();
    for (var e in b) {
      eigenVectorList.add(e / total);
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
    double x = 0;
    double total = 0;

    for (var e in a) {
      total += e;
    }

    b.clear();
    for (var ii = 0; ii < length; ii = ii + sumK) {
      x = 0;
      for (var i = 0; i < sumK; i++) {
        final y = a[ii + i];
        x += y;
      }
      b.add(x);
    }
    // print(b);

    eigenVectorList.clear();
    for (var e in b) {
      eigenVectorList.add(e / total);
    }

    alternatifPerbandingan();
  }

  static alternatifPerbandingan() {
    double sumK1 = 0;
    double sumK2 = 0;
    double sumK3 = 0;
    double sumK4 = 0;
    double sumK5 = 0;
    double sumK6 = 0;
    double sumK7 = 0;
    double sumK8 = 0;
    double sumK9 = 0;
    double sumK10 = 0;
    for (var element in alternatifControllers) {
      sumK1 += (element.k1.text == '') ? 0 : int.parse(element.k1.text);
      sumK2 += (element.k2.text == '') ? 0 : int.parse(element.k2.text);
      sumK3 += (element.k3.text == '') ? 0 : int.parse(element.k3.text);
      sumK4 += (element.k4.text == '') ? 0 : int.parse(element.k4.text);
      sumK5 += (element.k5.text == '') ? 0 : int.parse(element.k5.text);
      sumK6 += (element.k6.text == '') ? 0 : int.parse(element.k6.text);
      sumK7 += (element.k7.text == '') ? 0 : int.parse(element.k7.text);
      sumK8 += (element.k8.text == '') ? 0 : int.parse(element.k8.text);
      sumK9 += (element.k9.text == '') ? 0 : int.parse(element.k9.text);
      sumK10 += (element.k10.text == '') ? 0 : int.parse(element.k10.text);
    }
    final length = alternatifControllers.length;
    final av1 = (sumK1 == 0) ? 0 : sumK1 / length;
    final av2 = (sumK2 == 0) ? 0 : sumK2 / length;
    final av3 = (sumK3 == 0) ? 0 : sumK3 / length;
    final av4 = (sumK4 == 0) ? 0 : sumK4 / length;
    final av5 = (sumK5 == 0) ? 0 : sumK5 / length;
    final av6 = (sumK6 == 0) ? 0 : sumK6 / length;
    final av7 = (sumK7 == 0) ? 0 : sumK7 / length;
    final av8 = (sumK8 == 0) ? 0 : sumK8 / length;
    final av9 = (sumK9 == 0) ? 0 : sumK9 / length;
    final av10 = (sumK10 == 0) ? 0 : sumK10 / length;
    bobotAlternatif(av1, av2, av3, av4, av5, av6, av7, av8, av9, av10);
  }

  static bobotAlternatif(av1, av2, av3, av4, av5, av6, av7, av8, av9, av10) {
    bobotAlternatifList.clear();
    for (var element in alternatifControllers) {
      final double bobot1 = (element.k1.text != '' && av1 != 0)
          ? int.parse(element.k1.text) / av1
          : 0;
      final double bobot2 = (element.k1.text != '' && av2 != 0)
          ? int.parse(element.k2.text) / av2
          : 0;
      final double bobot3 = (element.k1.text != '' && av3 != 0)
          ? int.parse(element.k3.text) / av3
          : 0;
      final double bobot4 = (element.k1.text != '' && av4 != 0)
          ? int.parse(element.k4.text) / av4
          : 0;
      final double bobot5 = (element.k1.text != '' && av5 != 0)
          ? int.parse(element.k5.text) / av5
          : 0;
      final double bobot6 = (element.k1.text != '' && av6 != 0)
          ? int.parse(element.k6.text) / av6
          : 0;
      final double bobot7 = (element.k1.text != '' && av7 != 0)
          ? int.parse(element.k7.text) / av7
          : 0;
      final double bobot8 = (element.k1.text != '' && av8 != 0)
          ? int.parse(element.k8.text) / av8
          : 0;
      final double bobot9 = (element.k1.text != '' && av9 != 0)
          ? int.parse(element.k9.text) / av9
          : 0;
      final double bobot10 = (element.k1.text != '' && av10 != 0)
          ? int.parse(element.k10.text) / av10
          : 0;
      bobotAlternatifList.add(BobotAlternatif(
        bobot1,
        bobot2,
        bobot3,
        bobot4,
        bobot5,
        bobot6,
        bobot7,
        bobot8,
        bobot9,
        bobot10,
      ));
    }
    finalResult();
  }

  static finalResult() {
    finalResultList.clear();
    for (var i = 0; i < alternatifControllers.length; i++) {
      final double res1 = bobotAlternatifList[i].ba1 * eigenVectorList[i];
      final double res2 = bobotAlternatifList[i].ba2 * eigenVectorList[i];
      final double res3 = bobotAlternatifList[i].ba3 * eigenVectorList[i];
      final double res4 = bobotAlternatifList[i].ba4 * eigenVectorList[i];
      final double res5 = bobotAlternatifList[i].ba5 * eigenVectorList[i];
      final double res6 = bobotAlternatifList[i].ba6 * eigenVectorList[i];
      final double res7 = bobotAlternatifList[i].ba7 * eigenVectorList[i];
      final double res8 = bobotAlternatifList[i].ba8 * eigenVectorList[i];
      final double res9 = bobotAlternatifList[i].ba9 * eigenVectorList[i];
      final double res10 = bobotAlternatifList[i].ba10 * eigenVectorList[i];
      final double nilai =
          res1 + res2 + res3 + res4 + res5 + res6 + res7 + res8 + res9 + res10;
      finalResultList.add(FinalResult(
          // alternatifControllers[i].nama.text,
          nilai));
    }
    // print(alternatifControllers[0].nama.text);
    print(finalResultList[0].nilai);
    print(finalResultList[1].nilai);
  }
}
