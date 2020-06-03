import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:my_provider_architecture_template/core/services/location/location_service.dart';
import 'package:my_provider_architecture_template/core/utils/logger.dart';


class LocationServiceImpl implements LocationService {
  final _positionController = StreamController<Position>();
  StreamSubscription<Position> _positionStreamSubscription;
  final _locationOptions = LocationOptions(accuracy: LocationAccuracy.medium);
  bool _serviceStopped = false;

  final _positionStream = Geolocator();

  LocationServiceImpl() {
    _positionStreamSubscription =
        _positionStream.getPositionStream(_locationOptions).listen((event) {
      _positionController.add(event);
    });
  }

  @override
  // TODO: implement positionStream
  Stream<Position> get positionStream => _positionController.stream;

  @override
  // TODO: implement serviceStopped
  bool get serviceStopped => throw UnimplementedError();

  @override
  Future<void> start() async {
     Logger.d('LocationService resumed');
    _serviceStopped = false;

    await _resumeSignal();
    _positionStreamSubscription.resume();
  }

  @override
  void stop() {
     Logger.d('LocationService paused');
    _serviceStopped = true;

    _positionStreamSubscription.pause(_resumeSignal());
  }

  Future<void> _resumeSignal() async => true;
}
