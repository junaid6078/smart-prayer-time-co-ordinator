/// asr : "05:24 PM"
/// date : "2024-07-02"
/// fajr : "05:34 AM"
/// id : 3
/// isha : "08:53 PM"
/// magrib : "07:15 PM"
/// zuhr : "12:30 PM"

class PrayersByIdDate {
  PrayersByIdDate({
      String? asr, 
      String? date, 
      String? fajr, 
      num? id, 
      String? isha, 
      String? magrib, 
      String? zuhr,}){
    _asr = asr;
    _date = date;
    _fajr = fajr;
    _id = id;
    _isha = isha;
    _magrib = magrib;
    _zuhr = zuhr;
}

  PrayersByIdDate.fromJson(dynamic json) {
    _asr = json['asr'];
    _date = json['date'];
    _fajr = json['fajr'];
    _id = json['id'];
    _isha = json['isha'];
    _magrib = json['magrib'];
    _zuhr = json['zuhr'];
  }
  String? _asr;
  String? _date;
  String? _fajr;
  num? _id;
  String? _isha;
  String? _magrib;
  String? _zuhr;
PrayersByIdDate copyWith({  String? asr,
  String? date,
  String? fajr,
  num? id,
  String? isha,
  String? magrib,
  String? zuhr,
}) => PrayersByIdDate(  asr: asr ?? _asr,
  date: date ?? _date,
  fajr: fajr ?? _fajr,
  id: id ?? _id,
  isha: isha ?? _isha,
  magrib: magrib ?? _magrib,
  zuhr: zuhr ?? _zuhr,
);
  String? get asr => _asr;
  String? get date => _date;
  String? get fajr => _fajr;
  num? get id => _id;
  String? get isha => _isha;
  String? get magrib => _magrib;
  String? get zuhr => _zuhr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['asr'] = _asr;
    map['date'] = _date;
    map['fajr'] = _fajr;
    map['id'] = _id;
    map['isha'] = _isha;
    map['magrib'] = _magrib;
    map['zuhr'] = _zuhr;
    return map;
  }

}