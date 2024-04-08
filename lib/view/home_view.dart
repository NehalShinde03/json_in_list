import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_in_list/view/home_cubit.dart';
import 'package:json_in_list/view/home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String routeName = '/home_view';

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(const HomeState()),
      child: const HomeView(),
    );
  }

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index){
                String key = state.data.keys.elementAt(index);
                var value = state.data[key];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                      if(value is Map)...[
                        Text('$key : {',),
                        ...value.entries.map((e){
                          return Text('\t\t${e.key} - ${e.value}');
                        }),
                        Text('}'),
                      ]else...[
                        Text('$key : ${state.data[key]}')
                      ]

                  ],
                );
              }
          );
        },
      ),
    );
  }
}