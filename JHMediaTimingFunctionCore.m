//
//  JHMediaTimingFunctionCore.h
//
//
//  Created by jh on 2016/12/22.
//  Copyright © 2016年 jh. All rights reserved.
//

#import "JHMediaTimingFunctionCore.h"

@implementation JHMediaTimingFunctionCore

// === Sine : 正弦曲线缓动 ===
+(CAMediaTimingFunction*)easeInSine{
    return [CAMediaTimingFunction functionWithControlPoints:0.47 :0 :0.745 :0.715];
}

+(CAMediaTimingFunction*)easeOutSine{
    return [CAMediaTimingFunction functionWithControlPoints:0.39 :0.575 :0.565 :1.0];
}

+(CAMediaTimingFunction*)easeInOutSine{
    return [CAMediaTimingFunction functionWithControlPoints:0.445 :0.05 :0.55 :0.95];
}

// === Quad : 二次方缓动 ===
+(CAMediaTimingFunction*)easeInQuad{
    return [CAMediaTimingFunction functionWithControlPoints:0.55 :0.085 :0.68 :0.53];
}

+(CAMediaTimingFunction*)easeOutQuad{
    return [CAMediaTimingFunction functionWithControlPoints:0.25 :0.46 :0.45 :0.94];
}

+(CAMediaTimingFunction*)easeInOutQuad{
    return [CAMediaTimingFunction functionWithControlPoints:0.455 :0.03 :0.515 :0.955];
}


// === Cubic : 三次方缓动 ===
+(CAMediaTimingFunction*)easeInCubic{
    return [CAMediaTimingFunction functionWithControlPoints:0.55 :0.055 :0.675 :0.19];
}

+(CAMediaTimingFunction*)easeOutCubic{
    return [CAMediaTimingFunction functionWithControlPoints:0.215 :0.61 :0.355 :1.0];
}

+(CAMediaTimingFunction*)easeInOutCubic{
    return [CAMediaTimingFunction functionWithControlPoints:0.645 :0.045 :0.355 :1.0];
}


// === Quart : 四次方缓动 ===
/**
 easeInQuart
 */
+(CAMediaTimingFunction*)easeInQuart{
    return [CAMediaTimingFunction functionWithControlPoints:0.895 :0.03 :0.685 :0.22];
}

/**
 easeOutQuart
 */
+(CAMediaTimingFunction*)easeOutQuart{
    return [CAMediaTimingFunction functionWithControlPoints:0.165 :0.84 :0.44 :1.0];
}

/**
 easeInOutQuart
 */
+(CAMediaTimingFunction*)easeInOutQuart{
    return [CAMediaTimingFunction functionWithControlPoints:0.77 :0 :0.175 :1.0];
}


// === Quint : 五次方缓动 ===
/**
 easeInQuint
 */
+(CAMediaTimingFunction*)easeInQuint{
    return [CAMediaTimingFunction functionWithControlPoints:0.775 :0.05 :0.855 :0.06];
}

/**
 easeOutQuint
 */
+(CAMediaTimingFunction*)easeOutQuint{
    return [CAMediaTimingFunction functionWithControlPoints:0.23 :1.0 :0.32 :1.0];
}

/**
 easeInOutQuint
 */
+(CAMediaTimingFunction*)easeInOutQuint{
    return [CAMediaTimingFunction functionWithControlPoints:0.86 :0 :0.07 :1.0];
}


// === Expo : 指数曲线缓动 ===
/**
 easeInExpo
 */
+(CAMediaTimingFunction*)easeInExpo{
    return [CAMediaTimingFunction functionWithControlPoints:0.95 :0.05 :0.795 :0.035];
}

/**
 easeOutExpo
 */
+(CAMediaTimingFunction*)easeOutExpo {
    return [CAMediaTimingFunction functionWithControlPoints:0.19 :1.0 :0.22 :1.0];
}

/**
 easeInOutExpo
 */
+(CAMediaTimingFunction*)easeInOutExpo{
    return [CAMediaTimingFunction functionWithControlPoints:1.0 :0 :0 :1.0];
}

// === Circ : 圆形曲线缓动 ===
/**
 easeInCirc
 */
+(CAMediaTimingFunction*)easeInCirc{
    return [CAMediaTimingFunction functionWithControlPoints:0.6 :0.04 :0.98 :0.335];
}

/**
 easeOutCirc
 */
+(CAMediaTimingFunction*)easeOutCirc{
    return [CAMediaTimingFunction functionWithControlPoints:0.075 :0.82 :0.165 :1.0];
}

/**
 easeInOutCirc
 */
+(CAMediaTimingFunction*)easeInOutCirc{
    return [CAMediaTimingFunction functionWithControlPoints:0.785 :0.135 :0.15 :0.86];
}


// === Back : 超过范围的三次方缓动 ===
/**
 easeInBack
 */
+(CAMediaTimingFunction*)easeInBack{
    return [CAMediaTimingFunction functionWithControlPoints:0.6 :-0.28 :0.735 :0.045];
}

/**
 easeOutBack
 */
+(CAMediaTimingFunction*)easeOutBack{
    return [CAMediaTimingFunction functionWithControlPoints:0.175 :0.885 :0.32 :1.275];
}

/**
 easeInOutBack
 */
+(CAMediaTimingFunction*)easeInOutBack{
    return [CAMediaTimingFunction functionWithControlPoints:0.68 :-0.55 :0.265 :1.55];
}


//插值函数
// === Sine : 正弦曲线缓动 ===

//插值函数
/**
 easeInSine
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInSine:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    return -finalValue * cos(currentTime / duration * (M_PI / 2)) + finalValue + startValue;
}


/**
 easeOutSine
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutSine:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    return finalValue * sin(currentTime / duration * (M_PI / 2)) + startValue;
}

/**
 easeInOutSine
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutSine:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    if ((currentTime /= duration / 2) < 1){
        return finalValue / 2 * (sin(M_PI * currentTime / 2)) + startValue;
    }
    
    return -finalValue / 2 * (cos(M_PI * --currentTime / 2) - 2) + startValue;
}


// === Quad ===
/**
 easeInQuad
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInQuad:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime = currentTime / duration;
    return finalValue * currentTime * currentTime + startValue;
}

/**
 easeOutQuad
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutQuad:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    return -finalValue * currentTime * (currentTime - 2) + startValue;
}

/**
 easeInOutQuad
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutQuad:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    if (currentTime < 1){
        return finalValue / 2 * currentTime * currentTime + startValue;
    }
    else{
        --currentTime;
        return -finalValue / 2 * (currentTime * (currentTime - 2) - 1) + startValue;
    }
}

// === Cubic ===
/**
 easeInCubic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInCubic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    return finalValue * currentTime * currentTime * currentTime + startValue;
}

/**
 easeOutCubic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutCubic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime = currentTime / duration - 1;
    return finalValue * (currentTime * currentTime * currentTime + 1) + startValue;
}

/**
 easeInOutCubic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutCubic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    if ((currentTime / 2) < 1){
        return finalValue / 2 * currentTime * currentTime * currentTime + startValue;
    }
    else{
        currentTime -= 2;
        return finalValue / 2 * (currentTime * currentTime * currentTime + 2) + startValue;
    }
}


// === Quart ===
/**
 easeInQuart
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInQuart:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    return finalValue * currentTime * currentTime * currentTime * currentTime + startValue;
}

/**
 easeOutQuart
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutQuart:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime = currentTime / duration - 1;
    return -finalValue * (currentTime * currentTime * currentTime * currentTime - 1) + startValue;
}

/**
 easeInOutQuart
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutQuart:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    if ((currentTime / 2) < 1){
        return finalValue / 2 * currentTime * currentTime * currentTime * currentTime + startValue;
    }
    else{
        currentTime -= 2;
        return -finalValue / 2 * (currentTime * currentTime * currentTime * currentTime - 2) + startValue;
    }
}


// === Quint ===
/**
 easeInQuint
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInQuint:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    return finalValue * currentTime * currentTime * currentTime * currentTime * currentTime + startValue;
}

/**
 easeOutQuint
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutQuint:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    
    return finalValue * ((currentTime - 1) * currentTime * currentTime * currentTime * currentTime + 1) + startValue;
}

/**
 easeInOutQuint
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutQuint:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    if ((currentTime / 2) < 1){
        return finalValue / 2 * currentTime * currentTime * currentTime * currentTime * currentTime + startValue;
    }
    else{
        currentTime -= 2;
        return finalValue / 2 * (currentTime * currentTime * currentTime * currentTime * currentTime + 2) + startValue;
    }

}



// === Expo ===
/**
 easeInExpo
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInExpo:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    return (currentTime == 0) ? startValue : finalValue * pow(2, 10 * (currentTime / duration - 1)) + startValue;
}

/**
 easeOutExpo
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutExpo:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    return (currentTime == duration) ? startValue + finalValue : finalValue * (-pow(2, -10 * currentTime / duration) + 1) + startValue;
}

/**
 easeInOutExpot
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutExpo:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    if (currentTime == 0)
        return startValue;
    
    if (currentTime == duration)
        return startValue + finalValue;
    
    currentTime /= duration;
    if ((currentTime / 2) < 1)
        return finalValue / 2 * pow(2, 10 * (currentTime - 1)) + startValue;
    
    return finalValue / 2 * (-pow(2, -10 * --currentTime) + 2) + startValue;
}


// === Circ ===
/**
 easeInCirc
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInCirc:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    return -finalValue * (sqrt(1 - currentTime * currentTime) - 1) + startValue;
}

/**
 easeOutCirc
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutCirc:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime = currentTime / duration - 1;
    return finalValue * sqrt(1 - currentTime * currentTime) + startValue;
}

/**
 easeInOutCirc
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutCirc:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    if ((currentTime / 2) < 1)
        return -finalValue / 2 * (sqrt(1 - currentTime * currentTime) - 1) + startValue;
    
    currentTime -= 2;
    return finalValue / 2 * (sqrt(1 - currentTime * currentTime) + 1) + startValue;
}


// === Back ===
/**
 easeInBack
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInBack:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    return finalValue * currentTime * currentTime * ((1.70158f + 1) * currentTime - 1.70158f) + startValue;
}

/**
 easeOutBack
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutBack:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime = currentTime / duration -1;
    return finalValue * (currentTime * currentTime * ((1.70158f + 1) * currentTime + 1.70158f) + 1) + startValue;
}

/**
 easeInOutBack
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutBack:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    
    float s = 1.70158f;
    currentTime /= duration;
    if ((currentTime/ 2) < 1){
        s *= (1.525f);
        return finalValue / 2 * (currentTime * currentTime * ((s + 1) * currentTime - s)) + startValue;
    }
    else{
        currentTime -= 2;
        s *= (1.525f);
        return finalValue / 2 * (currentTime * currentTime * ((s + 1) * currentTime + s) + 2) + startValue;
    }
}


// === Elastic ===
/**
 easeInElastic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInElastic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    
    currentTime /= duration;
    if (currentTime == 1)
    {
        return startValue + finalValue;
    }
    
    float p = duration * 0.3f;
    float s = p / 4;
    
    currentTime -= 1;
    
    return -(finalValue * pow(2, 10 * currentTime) * sin((currentTime * duration - s) * (2 * M_PI) / p)) + startValue;
}

/**
 easeOutElastic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutElastic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    
    currentTime /= duration;
    
    if (currentTime == 1)
        return startValue + finalValue;
    
    float p = duration * 0.3f;
    float s = p / 4;
    
    return (finalValue * pow(2, -10 * currentTime) * sin((currentTime * duration - s) * (2 * M_PI) / p) + finalValue + startValue);
    
}

/**
 easeInOutElastic
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutElastic:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    if ((currentTime / 2) == 2)
        return startValue + finalValue;
    
    float p = duration * (0.3f * 1.5f);
    float s = p / 4;
    
    if (currentTime < 1){
        currentTime -= 1;
        return -0.5f * (finalValue * pow(2, 10 * currentTime) * sin((currentTime * duration - s) * (2 * M_PI) / p)) + startValue;
    }
    else{
        currentTime -= 1;
        return finalValue * pow(2, -10 * currentTime) * sin((currentTime * duration - s) * (2 * M_PI) / p) * 0.5f + finalValue + startValue;
    }
}


// === Bounce ===
/**
 easeInBounce
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInBounce:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    
    CGFloat outBounce = [JHMediaTimingFunctionCore easeOutBounce:(duration - currentTime) startValue:0 finalValue:finalValue duration:duration];
    
    return finalValue - outBounce + startValue;
}

/**
 easeOutBounce
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeOutBounce:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    currentTime /= duration;
    
    if (currentTime < (1 / 2.75f))
    {
        return finalValue * (7.5625f * currentTime * currentTime) + startValue;
    }
    else if (currentTime < (2 / 2.75f)){
        currentTime -= (1.5f / 2.75f);
        return finalValue * (7.5625f * currentTime * currentTime + 0.75f) + startValue;
    }
    else if (currentTime < (2.5f / 2.75f)){
        currentTime -= (2.25f / 2.75f);
        return finalValue * (7.5625f * currentTime * currentTime + 0.9375f) + startValue;
    }
    else{
        currentTime -= (2.625f / 2.75f);
        return finalValue * (7.5625f * currentTime * currentTime + 0.984375f) + startValue;
    }
    
}

/**
 easeInOutBounce
 
 @param currentTime 当前时刻
 @param startValue 起始值
 @param finalValue 结束值
 @param duration 动画持续时间
 @return 插值
 */
+(CGFloat)easeInOutBounce:(CGFloat)currentTime startValue:(CGFloat)startValue finalValue:(CGFloat)finalValue duration:(CGFloat)duration{
    
    if (currentTime < duration / 2){
        return [JHMediaTimingFunctionCore easeInBounce:(currentTime * 2) startValue:0 finalValue:finalValue duration:duration] * 0.5f + startValue;
    }
    else{
        return [JHMediaTimingFunctionCore easeOutBounce:(currentTime * 2 - duration) startValue:0 finalValue:finalValue duration:duration] * 0.5f + finalValue * 0.5f + startValue;
    }
}

@end
