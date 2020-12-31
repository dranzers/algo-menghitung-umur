void main(List<String> args) {
  String test = umur(tglLahir: '1990-12-20');
  print(test);
}

String umur({String tglLahir}) {
  DateTime dtLahir = DateTime.parse(tglLahir);
  DateTime dtSekarang = DateTime.now();

  int pinjamBulan = 0;
  int pinjamTahun = 0;

  if (dtSekarang.day.toInt() < dtLahir.day.toInt()) {
    pinjamBulan = 1;
  }
  int hari = dtSekarang.day.toInt() + (pinjamBulan * 30) - dtLahir.day;

  if (dtSekarang.month.toInt() < dtLahir.month.toInt()) {
    pinjamTahun = 1;
  }
  int bulan = dtSekarang.month.toInt() -
      (pinjamBulan) +
      (pinjamBulan * 12) -
      dtLahir.month.toInt();

  int tahun = dtSekarang.year.toInt() - (pinjamTahun) - dtLahir.year.toInt();

  return 'Umur anda tahun : ${tahun.toString()}, bulan : ${bulan.toString()}, hari : ${hari.toString()}';
}
