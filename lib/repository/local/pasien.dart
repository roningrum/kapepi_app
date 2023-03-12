class Pasien {
  int? id;
  String? noRM;
  String? nik;
  String? nama;
  String? kk;
  String? ibu;
  String? jenisKelamin;
  String? tLahir;
  String? tglLahir;
  String? alamat;
  String? kelurahan;
  String? puskesmas;
  String? status;
  String? caraBayar;

  Pasien({
      this.id,
      this.noRM,
      this.nik,
      this.nama,
      this.kk,
      this.ibu,
      this.jenisKelamin,
      this.alamat,
      this.tLahir,
      this.tglLahir,
      this.kelurahan,
      this.puskesmas,
      this.caraBayar,
      this.status});
  Pasien.fromMap(Map<String, dynamic> res)
        : id = res["id"],
          noRM = res["noRM"],
          nik = res["nik"],
          nama = res["nama"],
          kk = res["kk"],
          ibu = res["ibu"],
          jenisKelamin = res["jenisKelamin"],
          tLahir = res["tLahir"],
          tglLahir = res["tglLahir"],
          alamat = res["alamat"],
          kelurahan = res["kelurahan"],
          puskesmas = res["puskesmas"],
          caraBayar = res["caraBayar"],
          status = res["status"];
  Map<String, Object?> toMap(){
    return{
      'id' : id,
      'noRM' : noRM,
      'nik' : nik,
      'nama' : nama,
      'kk' : kk,
      'ibu' : ibu,
      'jenisKelamin' : jenisKelamin,
      'tLahir' : tLahir,
      'tglLahir' : tglLahir,
      'alamat' : alamat,
      'kelurahan' : kelurahan,
      'puskesmas' : puskesmas,
      'caraBayar' : caraBayar,
      'status' : status,
    };
  }
}
