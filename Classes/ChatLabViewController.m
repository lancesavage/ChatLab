//
//  ChatLabViewController.m
//  ChatLab
//
//  Created by les on 12/2/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ChatLabViewController.h"

@implementation ChatLabViewController

#pragma mark - 

#pragma mark GKPeerPickerControllerDelegate

- (GKSession *)peerPickerController:(GKPeerPickerController *)pickersessionForConnectionType:(GKPeerPickerConnectionType)type{
	if(session == nil){
		session = [[GKSession alloc] initWithSessionID:@"_csci151._tcp" displayName:@"Lance" sessionMode:GKSessionModePeer];
		session.delegate = self;
	}
	
	return session;
}

#pragma mark

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	picker = [[GKPeerPickerController alloc] init];
	picker.delegate = self;
	[picker show];
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
