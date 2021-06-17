import 'package:monidex/core/services/user_service.dart';
import 'package:rxdart/rxdart.dart';
import '../validators.dart';

class UserBloc with Validators {

  final service = new UserService();

  final _nickController = BehaviorSubject<String>();
  final _nameController = BehaviorSubject<String>();
  final _lastNameController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  
  //Recuperar datos del stream
  Stream<String> get nickStream => _nickController.stream.transform(validateNick);
  Stream<String> get nameStream => _nameController.stream.transform(validateName);
  Stream<String> get lastNameStream => _passwordController.stream.transform(validateLastName);
  Stream<String> get passwordStream => _passwordController.stream.transform(validatePassword);
  
  Stream<bool> get formValidStream => 
    Observable.combineLatest2(nickStream, passwordStream, (e, p) => true );
  
  Stream<bool> get registerValidStream =>
    Observable.combineLatest4( 
      passwordStream, 
      nickStream, 
      nameStream, 
      lastNameStream, 
      (a, b, c, d) => true);

  // Insertar valores al Stream
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeNick     => _nickController.sink.add;
  Function(String) get changeName     => _nameController.sink.add;
  Function(String) get changeLastName => _lastNameController.sink.add;

  // Obtener el último valor ingresado a los streams
  String get password => _passwordController.value;
  String get nick     => _nickController.value;
  String get name     => _nameController.value;
  String get lastName => _lastNameController.value;

  dispose() {
    _passwordController?.close();
    _nickController?.close();
    _nameController?.close();
    _lastNameController?.close();
  }

}