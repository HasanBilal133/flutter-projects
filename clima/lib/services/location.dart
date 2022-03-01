import 'package:geolocator/geolocator.dart';

class Location{
  double latitude=1.0;
  double longitude=1.0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      this.latitude = position.latitude;
      this.longitude = position.longitude;;
    }
    catch(e){
      print(e);
    }
  }
}