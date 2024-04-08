import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_in_list/view/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(super.initialState) {
    fetchData();
  }

  fetchData() async {
    final response = await rootBundle.loadString('assets/json_data/data.json');
    Map<String, dynamic> body = jsonDecode(response);
    emit(state.copyWith(data: body));
    //  print(body);
    // DataModel dataModel = DataModel.fromJson(body);
    // emit(state.copyWith(dataList: dataModel));
  }
}
