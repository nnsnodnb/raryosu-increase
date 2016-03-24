//
//  ViewController.m
//  raryosu
//
//  Created by nnsnodnb on 2016/03/24.
//  Copyright © 2016年 nnsnodnb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *raryosuImg;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.raryosuImg.tag = 1;
	self.raryosuImg.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [[event allTouches] anyObject];
	if (touch.view.tag == 1) {
		[self addRaryosuImg];
	}
}

- (void)addRaryosuImg {
	UIImage *img = [UIImage imageNamed:@"circle.png"];
	UIImageView *iv = [[UIImageView alloc] initWithImage:img];
	CGRect rect1 = CGRectMake(rand() % 200, rand() % 450, 129, 129);
	iv.frame = rect1;
	iv.tag = 1;
	iv.userInteractionEnabled = YES;
	[self.view addSubview:iv];
}

@end
