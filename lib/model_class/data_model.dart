// class DataModel {
//   final String? usd;
//   final double? btc;
//   final String? inr;
//   final String? jpy;
//   final Eth? eth;
//
//   DataModel({
//     this.usd,
//     this.btc,
//     this.inr,
//     this.jpy,
//     this.eth,
//   });
//
//   factory DataModel.fromJson(Map<String, dynamic> json) =>
//       DataModel(
//           usd: json['usd'],
//           btc: json['btc'],
//           inr: json['inr'],
//           jpy: json['jpy'],
//           eth: Eth.fromJson(json['eth'])
//       );
// }
//
// class Eth {
//   final String eth1;
//   final String eth2;
//
//   Eth({required this.eth1, required this.eth2});
//
//   factory Eth.fromJson(Map<String, dynamic> json) =>
//       Eth(
//         eth1: json['20/02/24'],
//         eth2: json['19/02/24'],
//       );
// }
//
// // {
// // "usd" : "2.00",
// // "btc" : 0.05,
// // "inr" : "1500.00",
// // "jpy" : "12.00",
// // "eth" : {
// // "20/02/24" : "2530.12564",
// // "19/02/24" : "2456.36858"
// // }
// // }