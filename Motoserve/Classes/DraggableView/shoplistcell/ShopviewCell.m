//
//  ShopviewCell.m
//  Motoserve
//
//  Created by Karthik Baskaran on 25/01/19.
//  Copyright © 2019 Shyam. All rights reserved.
//

#import "ShopviewCell.h"
#import "Utils.h"
#import "AppDelegate.h"
@implementation ShopviewCell
{
    AppDelegate *appDelegate;
    UIView  * MainView;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self createDesign];
    }
    return self;
}

- (void)createDesign
{
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    MainView=[[UIView alloc]init];
    [self.contentView addSubview:MainView];
    MainView.translatesAutoresizingMaskIntoConstraints = NO;
    [MainView.topAnchor constraintEqualToAnchor:self.topAnchor constant:10].active=YES;
    [MainView.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10].active=YES;
    [MainView.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-10].active=YES;
    [MainView.heightAnchor constraintEqualToConstant:110].active=YES;
    MainView.backgroundColor=Singlecolor(clearColor);
    MainView.layer.borderColor = [UIColor clearColor].CGColor;
    MainView.layer.borderWidth = 1.0f;
    MainView.layer.cornerRadius = 8;
    MainView.layer.masksToBounds = true;
    
    
    UIButton * bgBtn=[[UIButton alloc]init];
    [MainView addSubview:bgBtn];
    bgBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [bgBtn.topAnchor constraintEqualToAnchor:MainView.topAnchor constant:0].active=YES;
    [bgBtn.leftAnchor constraintEqualToAnchor:MainView.leftAnchor constant:0].active=YES;
    [bgBtn.rightAnchor constraintEqualToAnchor:MainView.rightAnchor constant:0].active=YES;
    [bgBtn.heightAnchor constraintEqualToAnchor:MainView.heightAnchor constant:0].active=YES;
    [bgBtn setBackgroundImage:image(@"list_bg") forState:UIControlStateNormal];
    bgBtn.userInteractionEnabled=NO;
    
    
    UIImageView * headerImg=[[UIImageView alloc]init];
    [MainView addSubview:headerImg];
    headerImg.translatesAutoresizingMaskIntoConstraints = NO;
    [headerImg.topAnchor constraintEqualToAnchor:MainView.topAnchor constant:5].active=YES;
    [headerImg.centerXAnchor constraintEqualToAnchor:MainView.centerXAnchor constant:5].active=YES;
    [headerImg.widthAnchor constraintEqualToConstant:SCREEN_WIDTH/2.5].active=YES;
    [headerImg.heightAnchor constraintEqualToConstant:21].active=YES;
    headerImg.image=image(@"service_header");
    
    
    UILabel * serviceLbl=[[UILabel alloc]init];
    [headerImg addSubview:serviceLbl];
    serviceLbl.translatesAutoresizingMaskIntoConstraints = NO;
    [serviceLbl.topAnchor constraintEqualToAnchor:headerImg.topAnchor constant:0].active=YES;
    [serviceLbl.leftAnchor constraintEqualToAnchor:headerImg.leftAnchor constant:0].active=YES;
    [serviceLbl.widthAnchor constraintEqualToAnchor:headerImg.widthAnchor constant:0].active=YES;
    [serviceLbl.heightAnchor constraintEqualToAnchor:headerImg.heightAnchor constant:0].active=YES;
    serviceLbl.text=@"General Service";
    serviceLbl.textColor=Singlecolor(whiteColor);
    serviceLbl.textAlignment=NSTextAlignmentCenter;
    serviceLbl.font=RalewayRegular(appDelegate.font-6);
    
    UIImageView * carImg=[[UIImageView alloc]init];
    [MainView addSubview:carImg];
    carImg.translatesAutoresizingMaskIntoConstraints = NO;
    [carImg.centerYAnchor constraintEqualToAnchor:MainView.centerYAnchor constant:5].active=YES;
    [carImg.leftAnchor constraintEqualToAnchor:MainView.leftAnchor constant:20].active=YES;
    [carImg.widthAnchor constraintEqualToConstant:60].active=YES;
    [carImg.heightAnchor constraintEqualToConstant:30].active=YES;
    carImg.image=image(@"order_car");
    
    
    UIView * imgdiv=[[UIView alloc]init];
    [MainView addSubview:imgdiv];
    imgdiv.translatesAutoresizingMaskIntoConstraints = NO;
    [imgdiv.topAnchor constraintEqualToAnchor:headerImg.bottomAnchor constant:20].active=YES;
    [imgdiv.leftAnchor constraintEqualToAnchor:carImg.rightAnchor constant:5].active=YES;
    [imgdiv.widthAnchor constraintEqualToConstant:1].active=YES;
    [imgdiv.bottomAnchor constraintEqualToAnchor:MainView.bottomAnchor constant:-20].active=YES;
    imgdiv.backgroundColor=Singlecolor(lightGrayColor);
    
    
    UILabel * noLbl=[[UILabel alloc]init];
    [MainView addSubview:noLbl];
    noLbl.translatesAutoresizingMaskIntoConstraints = NO;
    [noLbl.topAnchor constraintEqualToAnchor:headerImg.bottomAnchor constant:5].active=YES;
    [noLbl.leftAnchor constraintEqualToAnchor:imgdiv.leftAnchor constant:10].active=YES;
    [noLbl.rightAnchor constraintEqualToAnchor:MainView.rightAnchor constant:-10].active=YES;
    [noLbl.heightAnchor constraintEqualToConstant:21].active=YES;
    noLbl.text=@"TN 22 1458";
    noLbl.textColor=Singlecolor(grayColor);
    noLbl.textAlignment=NSTextAlignmentLeft;
    noLbl.font=RalewayRegular(appDelegate.font-5);
    
    
    UILabel * typeLbl=[[UILabel alloc]init];
    [MainView addSubview:typeLbl];
    typeLbl.translatesAutoresizingMaskIntoConstraints = NO;
    [typeLbl.topAnchor constraintEqualToAnchor:noLbl.bottomAnchor constant:0].active=YES;
    [typeLbl.leftAnchor constraintEqualToAnchor:noLbl.leftAnchor constant:0].active=YES;
    [typeLbl.rightAnchor constraintEqualToAnchor:noLbl.rightAnchor constant:0].active=YES;
    [typeLbl.heightAnchor constraintEqualToAnchor:noLbl.heightAnchor constant:0].active=YES;
    typeLbl.text=@"Maruthi Alto";
    typeLbl.textAlignment=NSTextAlignmentLeft;
    typeLbl.textColor=Singlecolor(grayColor);
    typeLbl.font=RalewayRegular(appDelegate.font-5);
    
    
    UILabel * servicecenterLbl=[[UILabel alloc]init];
    [MainView addSubview:servicecenterLbl];
    servicecenterLbl.translatesAutoresizingMaskIntoConstraints = NO;
    [servicecenterLbl.topAnchor constraintEqualToAnchor:typeLbl.bottomAnchor constant:0].active=YES;
    [servicecenterLbl.leftAnchor constraintEqualToAnchor:noLbl.leftAnchor constant:0].active=YES;
    [servicecenterLbl.rightAnchor constraintEqualToAnchor:noLbl.rightAnchor constant:0].active=YES;
    [servicecenterLbl.heightAnchor constraintEqualToAnchor:noLbl.heightAnchor constant:0].active=YES;
    servicecenterLbl.text=@"Rasi Motors, Tambaram";
    servicecenterLbl.textAlignment=NSTextAlignmentLeft;
    servicecenterLbl.textColor=Singlecolor(grayColor);
    servicecenterLbl.font=RalewayRegular(appDelegate.font-5);
}
@end
