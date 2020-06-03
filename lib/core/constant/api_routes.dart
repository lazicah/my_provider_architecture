/// List of api end points
class ApiRoutes {
  ApiRoutes._();

  static const base_url =
      'https://api.greaterevangelism.com/v1';
  // static const posts = '${base_url}/posts';
  static const initialise = "$base_url?action=initialize";
  static const devotionals ="$base_url/devotionals";
  static const testimonies = "$base_url/testimonies/approved";
  static const events = "$base_url/events";

}
