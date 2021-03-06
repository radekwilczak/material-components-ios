// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCListColorThemer.h"

static const CGFloat kHighAlpha = (CGFloat)0.87;
static const CGFloat kInkAlpha = (CGFloat)0.16;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-implementations"
@implementation MDCListColorThemer
#pragma clang diagnostic pop

+ (void)applySemanticColorScheme:(id<MDCColorScheming>)colorScheme
          toSelfSizingStereoCell:(MDCSelfSizingStereoCell *)cell {
  cell.titleLabel.textColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kHighAlpha];
  cell.detailLabel.textColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kHighAlpha];
  cell.leadingImageView.tintColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kHighAlpha];
  cell.trailingImageView.tintColor =
      [colorScheme.onSurfaceColor colorWithAlphaComponent:kHighAlpha];
  UIColor *rippleColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kInkAlpha];
  cell.inkColor = rippleColor;
  cell.rippleColor = rippleColor;
}

+ (void)applySemanticColorScheme:(id<MDCColorScheming>)colorScheme toBaseCell:(MDCBaseCell *)cell {
  UIColor *rippleColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kInkAlpha];
  cell.inkColor = rippleColor;
  cell.rippleColor = rippleColor;
}

@end
