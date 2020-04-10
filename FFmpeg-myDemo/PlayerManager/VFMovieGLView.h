//
//  VFMovieGLView.h
//  FFmpeg-myDemo
//
//  Created by ChenJiangLin on 2020/4/10.
//  Copyright © 2020 LoveToday. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class VFVideoFrame;
@class VFMovieDecoder;

@interface VFMovieGLView : UIView

- (id) initWithFrame:(CGRect)frame
             decoder:(VFMovieDecoder *)decoder;

- (void) render:(VFVideoFrame *)frame;

@end

NS_ASSUME_NONNULL_END
