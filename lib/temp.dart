// class _HomePageViewState extends State<HomePageView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Json task')),
//       body: BlocBuilder<HomePageCubit, HomePageState>(
//         builder: (context, state) {
//           return Center(
//             child: Container(
//               padding: PaddingValue.normal * 2,
//               child: ListView.builder(
//                 itemCount: state.mapData.length,
//                 itemBuilder: (context, index) {
//                   String key = state.mapData.keys.elementAt(index);
//                   dynamic value = state.mapData[key];
//                   if (value is Map) {
//                     // If the value is a map, iterate through its keys and display them individually
//                     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('$key:', style: const TextStyle(fontWeight: FontWeight.bold)),
//                         ...value.entries.map((entry) => Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 16),
//                           child: Row(
//                             children: [
//                               Text(entry.key),
//                               const SizedBox(width: 8),
//                               Text(entry.value.toString()),
//                             ],
//                           ),
//                         )).toList(),
//                       ],
//                     );
//                   } else {
//                     // If the value is not a map, display it as a simple key-value pair
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Row(
//                         children: [
//                           Text('$key:'),
//                           const SizedBox(width: 8),
//                           Text(value.toString()),
//                         ],
//                       ),
//                     );
//                   }
//                 },
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }