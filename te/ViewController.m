//
//  ViewController.m
//  te
//
//  Created by admin on 2023/01/20.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *heightAnchor;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *height2Anchor;
@property (nonatomic) BOOL flag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)handleAction:(id)sender {
    CGFloat height = 0;
    CGFloat eheight = 500;
   
    self.flag = !self.flag;
    self.heightAnchor.constant = self.flag == YES ? eheight : height;
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)handleAction2:(id)sender {
    CGFloat height = 0;
    CGFloat eheight = 200;
    
    self.flag = !self.flag;
    self.height2Anchor.constant = self.flag == YES ? eheight : height;
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
