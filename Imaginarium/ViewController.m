//
//  ViewController.m
//  Imaginarium
//
//  Created by cipher on 15/10/26.
//  Copyright © 2015年 com.lab1411.cipher. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate> //私有接口
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ViewController


-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.ImageView;
}

-(void)viewDidLoad{
    
    [super viewDidLoad];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = self.ImageView.image.size;
    self.ImageView.frame =  CGRectMake(0, 0, self.ImageView.image.size.width, self.ImageView.image.size.height);
    
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) InterfaceOrientation{
    if ([[UIDevice currentDevice] userInterfaceIdiom ] == UIUserInterfaceIdiomPhone) {
        return InterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown;
    }else {
        return YES;
    }
}
@end
