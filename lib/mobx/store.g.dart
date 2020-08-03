// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreMobx on _StoreMobx, Store {
  final _$tokenAtom = Atom(name: '_StoreMobx.token');

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  final _$emailAtom = Atom(name: '_StoreMobx.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$connectAsyncAction = AsyncAction('_StoreMobx.connect');

  @override
  Future<void> connect() {
    return _$connectAsyncAction.run(() => super.connect());
  }

  final _$disconnectAsyncAction = AsyncAction('_StoreMobx.disconnect');

  @override
  Future<void> disconnect() {
    return _$disconnectAsyncAction.run(() => super.disconnect());
  }

  @override
  String toString() {
    return '''
token: ${token},
email: ${email}
    ''';
  }
}
