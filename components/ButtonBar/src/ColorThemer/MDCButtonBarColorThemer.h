// Copyright 2017-present the Material Components for iOS authors. All Rights Reserved.
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

#import "MaterialButtonBar.h"
#import "MaterialColorScheme.h"

/**
 The Material Design color system's themer for instances of MDCButtonBar.

 @warning This API will eventually be deprecated. The replacement API is:
 `MDCButtonBar`'s `-applyPrimaryThemeWithScheme:`
 Learn more at docs/theming.md#migration-guide-themers-to-theming-extensions
 */
__deprecated_msg("ButtonBar is not intended to be themed as a standalone component."
                 " Please theme it via the AppBar component's Theming extension instead.")
    @interface MDCButtonBarColorThemer : NSObject

/**
 Applies a color scheme's properties to an MDCButtonBar.

 @param colorScheme The color scheme to apply to the component instance.
 @param buttonBar A component instance to which the color scheme should be applied.

 */
+ (void)applySemanticColorScheme:(nonnull id<MDCColorScheming>)colorScheme
                     toButtonBar:(nonnull MDCButtonBar *)buttonBar
    __deprecated_msg("ButtonBar is not intended to be themed as a standalone component."
                     " Please theme it via the AppBar component's Theming extension instead.");

/**
 Applies a color scheme's properties to an MDCButtonBar.

 @param colorScheme The color scheme to apply to the component instance.
 @param buttonBar A component instance to which the color scheme should be applied.

 @warning This API will eventually be deprecated. The replacement API is:
 `MDCButtonBar`'s `-applyPrimaryThemeWithScheme:`
 Learn more at docs/theming.md#migration-guide-themers-to-theming-extensions
 */
+ (void)applyColorScheme:(nonnull id<MDCColorScheme>)colorScheme
             toButtonBar:(nonnull MDCButtonBar *)buttonBar
    __deprecated_msg("ButtonBar is not intended to be themed as a standalone component."
                     " Please theme it via the AppBar component's Theming extension instead.");

@end
