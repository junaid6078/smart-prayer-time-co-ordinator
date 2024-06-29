class Masjid {
  final int id;
  final String name;
  final String address;
  final String fajr;
  final String zuhr;
  final String asr;
  final String magrib;
  final String isha;
  final String date;

  Masjid({
    required this.id,
    required this.name,
    required this.address,
    required this.fajr,
    required this.zuhr,
    required this.asr,
    required this.magrib,
    required this.isha,
    required this.date,
  });

  factory Masjid.fromJson(Map<String, dynamic> json) {
    return Masjid(
      id: json['id'],
      date: json['date'],
      name: json['name'],
      address: json['address'],
      fajr: json['prayerTimes']['fajr'],
      zuhr: json['prayerTimes']['zuhr'],
      asr: json['prayerTimes']['asr'],
      magrib: json['prayerTimes']['magrib'],
      isha: json['prayerTimes']['isha'],

    );
  }
}