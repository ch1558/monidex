import 'dart:async';

class Validators {
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData:(password,sink){
      if(password.length >= 4)
        sink.add( password );
      else
        sink.addError('Más de 4 caracteres por favor');
    }
  );

  final validateName = StreamTransformer<String, String>.fromHandlers(
    handleData:(name,sink){
      if(name.length >= 3)
        sink.add( name );
      else
        sink.addError('Más de 3 caracteres por favor');
    }
  );

  final validateLastName = StreamTransformer<String, String>.fromHandlers(
    handleData:(lastName,sink){
      if(lastName.length >= 3)
        sink.add( lastName );
      else
        sink.addError('Más de 3 caracteres por favor');
    }
  );

  final validateNick = StreamTransformer<String, String>.fromHandlers(
    handleData:(lastName,sink){
      if(lastName.length >= 3)
        sink.add( lastName );
      else
        sink.addError('Más de 3 caracteres por favor');
    }
  );

}
