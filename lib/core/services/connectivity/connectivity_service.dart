

import 'package:my_provider_architecture_template/core/enums/connectivity_status.dart';

import '../stoppable_service.dart';

abstract class ConnectivityService implements StoppableService {
  Stream<ConnectivityStatus> get connectivity$;

  Future<bool> get isConnected;
}
