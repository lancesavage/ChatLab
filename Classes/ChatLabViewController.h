//
//  ChatLabViewController.h
//  ChatLab
//
//  Created by les on 12/2/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>

@interface ChatLabViewController : UIViewController <UITextFieldDelegate, GKSessionDelegate, GKPeerPickerControllerDelegate>{
	IBOutlet UITextField *txtField;
	IBOutlet UITextView *textView;	
	
	GKPeerPickerController *picker;
	GKSession *session;
	
	
}



@end

