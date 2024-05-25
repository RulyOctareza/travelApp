import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String hobby;
  final String name;
  final int balance;

  const UserModel({
    required this.id,
    required this.email,
    this.hobby = '',
    required this.name,
    this.balance = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, email, hobby, balance];
}
