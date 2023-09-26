
class TAnimatePosition {
  final double? topBefore, bottomBefore, rightBefore, leftBefore;
  final double? topAfter, bottomAfter, rightAfter, leftAfter;

  TAnimatePosition({
     double? topAfterValue,
     double? topBeforeValue,
     double? bottomAfterValue,
     double? bottomBeforeValue,
     double? rightAfterValue,
     double? rightBeforeValue,
     double? leftAfterValue,
     double? leftBeforeValue,
  })  : topAfter = topAfterValue,
        topBefore = topBeforeValue,
        bottomAfter = bottomAfterValue,
        bottomBefore = bottomBeforeValue,
        rightAfter = rightAfterValue,
        rightBefore = rightBeforeValue,
        leftAfter = leftAfterValue,
        leftBefore = leftBeforeValue;
}
