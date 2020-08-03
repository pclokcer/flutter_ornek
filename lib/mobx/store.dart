import 'package:mobx/mobx.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
part 'store.g.dart';

class StoreMobx = _StoreMobx with _$StoreMobx;

abstract class _StoreMobx with Store {
  IO.Socket socketIO = IO.io('http://e-garsonum.com', <String, dynamic>{
    'transports': ['websocket'],
    'autoConnect': false,
  });

  @observable
  String token = '';
  @observable
  String email = '';

  @action
  Future<void> connect() async {
    socketIO.connect();
    socketIO.on('connect', (_) {
      print('connect');
    });
    socketIO.on('event', (data) => print(data));
    socketIO.on('disconnect', (_) => print('disconnect'));
  }

  @action
  Future<void> disconnect() async {
    socketIO.disconnect();
    socketIO.dispose();
  }
}
