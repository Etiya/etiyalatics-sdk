abstract class AppLogger {
    void i(dynamic message, [dynamic error, StackTrace? stackTrace]);
    void d(dynamic message, [dynamic error, StackTrace? stackTrace]);
    void e(dynamic message, [dynamic error, StackTrace? stackTrace]);
}