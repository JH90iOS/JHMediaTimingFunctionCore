//
//  JHMediaTimingFunctionCore.h
//
//
//  Created by jh on 2016/12/22.
//  Copyright © 2016年 jh. All rights reserved.
//  自定义动画缓冲函数

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface JHMediaTimingFunctionCore : NSObject

//贝塞尔缓冲函数

// === Sine : 正弦曲线缓动 ===
/**
 easeInSine
 */
+(CAMediaTimingFunction*)easeInSine;


/**
 easeOutSine
 */
+(CAMediaTimingFunction*)easeOutSine;


/**
 easeInOutSine
 */
+(CAMediaTimingFunction*)easeInOutSine;


// === Quad : 二次方缓动 ===
/**
 easeInQuad
 */
+(CAMediaTimingFunction*)easeInQuad;


/**
 easeOutQuad
 */
+(CAMediaTimingFunction*)easeOutQuad;


/**
 easeInOutQuad
 */
+(CAMediaTimingFunction*)easeInOutQuad;


// === Cubic : 三次方缓动 ===
/**
 easeInCubic
 */
+(CAMediaTimingFunction*)easeInCubic;


/**
 easeOutCubic
 */
+(CAMediaTimingFunction*)easeOutCubic;


/**
 easeInOutCubic
 */
+(CAMediaTimingFunction*)easeInOutCubic;


// === Quart : 四次方缓动 ===
/**
 easeInQuart
 */
+(CAMediaTimingFunction*)easeInQuart;


/**
 easeOutQuart
 */
+(CAMediaTimingFunction*)easeOutQuart;


/**
 easeInOutQuart
 */
+(CAMediaTimingFunction*)easeInOutQuart;


// === Quint : 五次方缓动 ===
/**
 easeInQuint
 */
+(CAMediaTimingFunction*)easeInQuint;


/**
 easeOutQuint
 */
+(CAMediaTimingFunction*)easeOutQuint;


/**
 easeInOutQuint
 */
+(CAMediaTimingFunction*)easeInOutQuint;


// === Expo : 指数曲线缓动 ===
/**
 easeInExpo
 */
+(CAMediaTimingFunction*)easeInExpo;


/**
 easeOutExpo
 */
+(CAMediaTimingFunction*)easeOutExpo;


/**
 easeInOutExpo
 */
+(CAMediaTimingFunction*)easeInOutExpo;


// === Circ : 圆形曲线缓动 ===
/**
 easeInCirc
 */
+(CAMediaTimingFunction*)easeInCirc;


/**
 easeOutCirc
 */
+(CAMediaTimingFunction*)easeOutCirc;


/**
 easeInOutCirc
 */
+(CAMediaTimingFunction*)easeInOutCirc;


// === Back : 超过范围的三次方缓动 ===
/**
 easeInBack
 */
+(CAMediaTimingFunction*)easeInBack;


/**
 easeOutBack
 */
+(CAMediaTimingFunction*)easeOutBack;


/**
 easeInOutBack
 */
+(CAMediaTimingFunction*)easeInOutBack;



//插值函数

// === Sine : 正弦曲线缓动 ===
/**
 easeInSine
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInSine:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutSine
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutSine:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutSine
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutSine:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Quad ===
/**
 easeInQuad
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInQuad:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutQuad
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutQuad:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutQuad
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutQuad:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

// === Cubic ===
/**
 easeInCubic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInCubic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


/**
 easeOutCubic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutCubic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


/**
 easeInOutCubic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutCubic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Quart ===
/**
 easeInQuart
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInQuart:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutQuart
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutQuart:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutQuart
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutQuart:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Quint ===
/**
 easeInQuint
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInQuint:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutQuint
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutQuint:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutQuint
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutQuint:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;



// === Expo ===
/**
 easeInExpo
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInExpo:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutExpo
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutExpo:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutExpot
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutExpo:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Circ ===
/**
 easeInCirc
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInCirc:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutCirc
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutCirc:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutCirc
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutCirc:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Back ===
/**
 easeInBack
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInBack:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutBack
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutBack:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutBack
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutBack:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Elastic ===
/**
 easeInElastic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInElastic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutElastic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutElastic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutElastic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutElastic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;


// === Bounce ===
/**
 easeInBounce
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInBounce:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeOutBounce
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutBounce:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

/**
 easeInOutBounce
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutBounce:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration;

@end
