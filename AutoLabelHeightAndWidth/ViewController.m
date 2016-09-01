//
//  ViewController.m
//  AutoLabelHeightAndWidth
//
//  Created by LenovoMac on 16/9/1.
//  Copyright © 2016年 LenovoMac. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+HeightLabel.h"
@interface ViewController ()

@property (nonatomic ,strong) UILabel *nameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    // 设置Label的字体 HelveticaNeue  Courier
//    UIFont *fnt = [UIFont fontWithName:@"HelveticaNeue" size:24.0f];
//    _nameLabel.font = fnt;
//    // 根据字体得到NSString的尺寸
//    CGSize size = [_nameLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:fnt,NSFontAttributeName, nil]];
//    // 名字的H
//    CGFloat nameH = size.height;
//    // 名字的W
//    CGFloat nameW = size.width;
//    _nameLabel.frame = CGRectMake(10, 50, nameW,nameH);
//    
//    [self.view addSubview:self.nameLabel];
    
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 280, 20)];
    label.font = [UIFont boldSystemFontOfSize:15.0f];  //UILabel的字体大小
    label.numberOfLines = 0;  //必须定义这个属性，否则UILabel不会换行
    label.textColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentLeft;  //文本对齐方式
    [label setBackgroundColor:[UIColor yellowColor]];
    label.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSLog(@"%ld",(long)label.lineBreakMode);
    //宽度不变，根据字的多少计算label的高度
    NSString *str = @"伴随着张震岳的这首老歌，仿佛我又回到了过去，回到了大学即将分别的日子，带着不舍与迷惘和他们说再见。又是一年毕业季，看着朋友圈各种晒毕业照，毕业旅行照，学士帽漫天的飞舞，各种送别活动在鲜花和掌声中慢慢退去色彩，心里不时充满着各种思念。离开校园整整一年了，每当和别人谈起母校各种自豪，大学生活各种多彩，人生经历各种丰富，其实内心还是留有种种遗憾；四年的蹉跎时光，有人收获了知识，有人收获了人生阅历，还有人收获了爱情，而我收获的只有那纯洁的友谊，兄弟情。    分别整整一年了，还记得那时我们都是多么的不舍，同学情，兄弟情，混合着酒精流到心里，一米八几的大男孩哭的稀里哗啦，拥抱着说再见；之后的我们离开了熟悉的校园，奔赴在各个工作岗位，去体现自己的价值，为生活而忙碌着；一转身，有些人真的就再也不见。      毕业一周年，你们还好吗？工作还顺利吗？学习还顺心吗？一切都回不了头，只能在心里默默地想着你们，希望你们安好。。。";
    //    CGSize size = [str sizeWithFont:label.font constrainedToSize:CGSizeMake(label.frame.size.width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    //    //根据计算结果重新设置UILabel的尺寸
    //    [label setFrame:CGRectMake(20, 10, 280, size.height)];
    //    label.text = str;
    label.text = str;
    
    [label setFrame: CGRectMake(20, 20, 280, [label contentSize].height)];
    
//    label.text = str;
//    
//    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    paragraphStyle.lineBreakMode = label.lineBreakMode;
//    paragraphStyle.alignment = label.textAlignment;
//    
//    NSDictionary * attributes = @{NSFontAttributeName : label.font,
//                                  NSParagraphStyleAttributeName : paragraphStyle};
//    
//    CGSize contentSize = [label.text boundingRectWithSize:CGSizeMake(label.frame.size.width, MAXFLOAT)
//                                                  options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading)
//                                               attributes:attributes
//                                                  context:nil].size;
//    //根据计算结果重新设置UILabel的尺寸
//    [label setFrame:CGRectMake(20, 10, 280, contentSize.height)];
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
