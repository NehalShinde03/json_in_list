import 'package:equatable/equatable.dart';

class HomeState extends Equatable{

  final Map<String, dynamic> data;

  const HomeState({
    this.data=const {}
  });

  @override
  List<Object?> get props => [data];

  HomeState copyWith({Map<String, dynamic>? data}){
    return HomeState(
      data: data ?? this.data
    );
  }

}
