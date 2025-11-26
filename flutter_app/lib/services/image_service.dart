import 'dart:typed_data';
import 'package:image/image.dart' as img;

class ImageService {
  Future<List<int>?> resizeImage(List<int> imageBytes, {int width = 500, int height = 500}) async {
    try {
      final image = img.decodeImage(Uint8List.fromList(imageBytes));
      if (image == null) return null;

      final resized = img.copyResizeCropSquare(image, size: width);

      return img.encodeJpg(resized);
    } catch (e) {
      print('Error resizing image: $e');
      return null;
    }
  }
}
