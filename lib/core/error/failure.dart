part of 'error.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class Failed extends Failure {
  const Failed(super.message);
}
