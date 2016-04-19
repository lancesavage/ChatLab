//
//  ChatLabAppDelegate.h
//  ChatLab
//
//  Created by les on 12/2/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChatLabViewController;

@interface ChatLabAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ChatLabViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ChatLabViewController *viewController;

@end

