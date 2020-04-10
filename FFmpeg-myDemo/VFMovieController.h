//
//  VFMovieController.h
//  FFmpeg-myDemo
//
//  Created by ChenJiangLin on 2020/4/10.
//  Copyright © 2020 LoveToday. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString * const VFMovieMinBufferedDuration;    // Float
extern NSString * const VFMovieMaxBufferedDuration;    // Float
extern NSString * const VFMovieDisableDeinterlacing;   // BOOL

@interface VFMovieController : UIViewController<UITableViewDataSource, UITableViewDelegate>
+ (id)movieViewControllerWithContentPath: (NSString *) path
                               parameters: (NSDictionary *) parameters;

@property (readonly) BOOL playing;

- (void) play;
- (void) pause;
@end

NS_ASSUME_NONNULL_END
