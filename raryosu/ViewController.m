//
//  ViewController.m
//  raryosu
//
//  Created by nnsnodnb on 2016/03/24.
//  Copyright © 2016年 nnsnodnb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *raryosuImage;

@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  _raryosuImage.tag = 1;
  _raryosuImage.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - UITouch

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  UITouch *touch = [[event allTouches] anyObject];
  if (touch.view.tag == 1) {
    [self addRaryosuImage];
  }
}

#pragma mark - Increase raryosu image
/**
  *  らりょすアイコンを画面上に設置
	*/

- (void)addRaryosuImage {
  UIImage *image = [UIImage imageNamed:@"circle.png"];
  UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
  CGRect rect = CGRectMake(rand() % 200, rand() % 450, 129, 129);
  imageView.frame = rect;
  imageView.tag = 1;
  imageView.userInteractionEnabled = YES;
  [self.view addSubview:imageView];
}

@end
