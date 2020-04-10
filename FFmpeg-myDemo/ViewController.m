//
//  ViewController.m
//  FFmpeg-myDemo
//
//  Created by ChenJiangLin on 2020/4/10.
//  Copyright © 2020 LoveToday. All rights reserved.
//

#import "ViewController.h"
#import "VFMovieController.h"

@interface ViewController ()
@property(nonatomic, strong)NSString *localPath;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 20)];
//    label.numberOfLines = 1;
//    NSString *textStr = @"kj \n 154512jkfdjkdklsdfklsdfkls";
//    //NSString *result = [textStr stringByReplacingOccurrencesOfString:@"\n" withString:@""];
//    //label.text = result;
//    label.attributedText = [[NSAttributedString alloc] initWithString:@"kj \n 154512fdsklopgkkldfkldfgvdfsvdf"];
//    label.lineBreakMode = NSLineBreakByTruncatingTail;
//    [self.view addSubview:label];
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
    
    UIButton *localButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, screenWidth - 100, 30)];
    [localButton setTitle:@"播放本地视频" forState:UIControlStateNormal];
    localButton.backgroundColor = [UIColor redColor];
    [localButton addTarget:self action:@selector(localMoviePlay:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:localButton];
    
    
    
    
    /// 支持类型  mp3， caff，aiff， ogg， wma，m4a，m4v，wmv，3gp，mp4，mov，avi，mkv，mpeg，mpg，flv，vob
    NSArray *supportMovieType = @[@"mp3", @"caff", @"aiff",
                                  @"ogg", @"ogg", @"wma", @"m4a",
                                  @"m4v", @"wmv", @"3gp", @"mp4",
                                  @"mov", @"avi", @"mkv", @"mpeg",
                                  @"mpg", @"flv", @"vob"
    ];
    
    self.localPath = [[NSBundle mainBundle] pathForResource:@"Video_2019-09-03_215059" ofType:@"wmv"];
    
    
}

- (void)localMoviePlay:(UIButton *)button{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    if ([self.localPath.pathExtension isEqualToString:@"wmv"]) {
        parameters[VFMovieMinBufferedDuration] = @(5.0);
    }
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        parameters[VFMovieDisableDeinterlacing] = @YES;
    }
    
    VFMovieController *controller = [VFMovieController movieViewControllerWithContentPath:self.localPath parameters:parameters];
    [self presentViewController:controller animated:true completion:nil];
    
}


@end
