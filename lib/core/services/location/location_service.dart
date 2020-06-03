
import 'package:geolocator/geolocator.dart';
import 'package:my_provider_architecture_template/core/services/stoppable_service.dart';
/// Service that is responsible for navigating around the app
abstract class LocationService implements StoppableService {
  Stream<Position> get positionStream;
}
