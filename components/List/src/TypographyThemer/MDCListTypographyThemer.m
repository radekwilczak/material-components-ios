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

#import "MDCListTypographyThemer.h"
#import "MaterialTypography.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-implementations"
@implementation MDCListTypographyThemer
#pragma clang diagnostic pop

+ (void)applyTypographyScheme:(id<MDCTypographyScheming>)typographyScheme
       toSelfSizingStereoCell:(MDCSelfSizingStereoCell *)cell {
  UIFont *titleFont = typographyScheme.subtitle1;
  UIFont *detailFont = typographyScheme.body2;

  if (typographyScheme.useCurrentContentSizeCategoryWhenApplied) {
    titleFont = [titleFont mdc_scaledFontForTraitEnvironment:cell];
    detailFont = [detailFont mdc_scaledFontForTraitEnvironment:cell];
  }

  cell.titleLabel.font = titleFont;
  cell.detailLabel.font = detailFont;
}

@end
