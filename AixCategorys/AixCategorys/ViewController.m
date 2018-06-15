//
//  ViewController.m
//  AixCategorys
//
//  Created by liuhongnian on 16/9/30.
//  Copyright © 2016年 liuhongnian. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AixCategory.h"
#import "UIImage+AixCategory.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *img;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"comment_button"];
    image = [image x_imageByBlurExtraLight];
    
    UIImageView *imgView1 = [[UIImageView alloc] initWithImage:image];
    
    [self.view addSubview:imgView1];
    imgView1.center = self.view.center;

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
