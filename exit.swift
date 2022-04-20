#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
import Darwin
#elseif os(Linux) || os(FreeBSD) || os(Android)
import Glibc
#elseif os(Windows)
import ucrt
#else
#error("Unsupported Platform")
#endif

public struct ExitStatus: RawRepresentable, Hashable, Codable {
  /// The raw exit status code for C standard library.
  @_alwaysEmitIntoClient
  public let rawValue: CInt

  /// Create an exit status.
  ///
  /// - Parameter rawValue: The raw exit status code for C standard library.
  @_alwaysEmitIntoClient
  public init(rawValue: CInt) { self.rawValue = rawValue }

  /// Success exit status.
  @_alwaysEmitIntoClient
  public static var success: Self { .init(rawValue: EXIT_SUCCESS) }

  /// Failure exit status.
  @_alwaysEmitIntoClient
  public static var failure: Self { .init(rawValue: EXIT_FAILURE) }
}


/// Terminate the current process.
///
/// - Parameter status: The exit status for the finished process.
public func exit(with status: ExitStatus) -> Never {
    exit(status.rawValue)
}
