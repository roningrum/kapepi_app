//Model Data untuk For Kartu Data
class Kartu {
  bool? status;
  Data? data;

  Kartu({this.status, this.data});

  Kartu.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? tanggal;
  String? kpusk;
  String? noReg;
  String? nik;
  String? nama;
  String? kk;
  String? ibu;
  String? rtRw;
  String? kdesa;
  String? jalan;
  String? domisili;
  String? telp;
  String? tLahir;
  String? tgLahir;
  String? jkl;
  String? gd;
  String? status;
  String? caraBayar;
  String? noAsn;
  String? jenisBpjs;
  String? pekerjaan;
  String? berat;
  String? prolanis;
  String? alergi;
  String? submitedAt;
  String? idKelurahan;
  String? kelurahan;
  String? kodeKd;
  String? kodeP;
  String? kodeKc;
  String? idPuskesmas;
  String? puskesmas;
  String? alamat;
  String? latlng;

  Data(
      {this.tanggal,
      this.kpusk,
      this.noReg,
      this.nik,
      this.nama,
      this.kk,
      this.ibu,
      this.rtRw,
      this.kdesa,
      this.jalan,
      this.domisili,
      this.telp,
      this.tLahir,
      this.tgLahir,
      this.jkl,
      this.gd,
      this.status,
      this.caraBayar,
      this.noAsn,
      this.jenisBpjs,
      this.pekerjaan,
      this.berat,
      this.prolanis,
      this.alergi,
      this.submitedAt,
      this.idKelurahan,
      this.kelurahan,
      this.kodeKd,
      this.kodeP,
      this.kodeKc,
      this.idPuskesmas,
      this.puskesmas,
      this.alamat,
      this.latlng});

  Data.fromJson(Map<String, dynamic> json) {
    tanggal = json['tanggal'];
    kpusk = json['kpusk'];
    noReg = json['no_reg'];
    nik = json['nik'];
    nama = json['nama'];
    kk = json['kk'];
    ibu = json['ibu'];
    rtRw = json['rt_rw'];
    kdesa = json['kdesa'];
    jalan = json['jalan'];
    domisili = json['domisili'];
    telp = json['telp'];
    tLahir = json['t_lahir'];
    tgLahir = json['tg_lahir'];
    jkl = json['jkl'];
    gd = json['gd'];
    status = json['status'];
    caraBayar = json['cara_bayar'];
    noAsn = json['no_asn'];
    jenisBpjs = json['jenis_bpjs'];
    pekerjaan = json['pekerjaan'];
    berat = json['berat'];
    prolanis = json['prolanis'];
    alergi = json['alergi'];
    submitedAt = json['submited_at'];
    idKelurahan = json['id_kelurahan'];
    kelurahan = json['kelurahan'];
    kodeKd = json['kode_kd'];
    kodeP = json['kode_p'];
    kodeKc = json['kode_kc'];
    idPuskesmas = json['id_puskesmas'];
    puskesmas = json['puskesmas'];
    alamat = json['alamat'];
    latlng = json['latlng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tanggal'] = tanggal;
    data['kpusk'] = kpusk;
    data['no_reg'] = noReg;
    data['nik'] = nik;
    data['nama'] = nama;
    data['kk'] = kk;
    data['ibu'] = ibu;
    data['rt_rw'] = rtRw;
    data['kdesa'] = kdesa;
    data['jalan'] = jalan;
    data['domisili'] = domisili;
    data['telp'] = telp;
    data['t_lahir'] = tLahir;
    data['tg_lahir'] = tgLahir;
    data['jkl'] = jkl;
    data['gd'] = gd;
    data['status'] = status;
    data['cara_bayar'] = caraBayar;
    data['no_asn'] = noAsn;
    data['jenis_bpjs'] = jenisBpjs;
    data['pekerjaan'] =pekerjaan;
    data['berat'] =berat;
    data['prolanis'] =prolanis;
    data['alergi'] =alergi;
    data['submited_at'] =submitedAt;
    data['id_kelurahan'] = idKelurahan;
    data['kelurahan'] =kelurahan;
    data['kode_kd'] =kodeKd;
    data['kode_p'] =kodeP;
    data['kode_kc'] =kodeKc;
    data['id_puskesmas'] =idPuskesmas;
    data['puskesmas'] .puskesmas;
    data['alamat'] =alamat;
    data['latlng'] =latlng;
    return data;
  }
}