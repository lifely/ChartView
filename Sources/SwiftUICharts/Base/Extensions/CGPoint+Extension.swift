import SwiftUI

public extension CGPoint {

  /// Calculate X and Y delta for each data point, based on data min/max and enclosing frame.
  /// - Parameters:
  ///   - frame: Rectangle of enclosing frame
  ///   - data: array of `Double`
  /// - Returns: X and Y delta as a `CGPoint`
  static func getStep(frame: CGRect, data: [Double], padding: CGFloat = 30.0, scale: CGPoint? = nil) -> CGPoint {
    // stepHeight
    var stepHeight: CGFloat = 0.0

    // stepWidth
    var stepWidth: CGFloat = frame.size.width / CGFloat(data.count - 1)

    let scale = scale ?? CGPoint(x: data.min() ?? 0.0, y: data.max() ?? 1.0)

    let min = scale.x
    let max = scale.y

    guard min != max else { return .zero }

    if min <= 0 {
      stepHeight = (frame.size.height - padding) / CGFloat(max - min)
    } else {
      stepHeight = (frame.size.height - padding) / CGFloat(max + min)
    }

    return CGPoint(x: stepWidth, y: stepHeight)
  }

}


