import 'dart:io';

class FfmpegManager {
  static FfmpegManager? _instance;
  bool _isAvailable = false;
  
  FfmpegManager._();
  
  static FfmpegManager get instance {
    _instance ??= FfmpegManager._();
    return _instance!;
  }
  
  Future<bool> executeCommand(String command) async {
    print('FFmpeg not available');
    return false;
  }
  
  Future<bool> executeCommandWithProgress(
    String command,
    Function(double)? onProgress,
  ) async {
    print('FFmpeg not available');
    return false;
  }
  
  Future<bool> isAvailable() async {
    return _isAvailable;
  }
  
  Future<String?> getVersion() async {
    return 'Not available';
  }
}
