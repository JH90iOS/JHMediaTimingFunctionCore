# JHMediaTimingFunctionCore
  自己收集整理开源的iOS动画缓冲函数库（objective-c），包含贝塞尔曲线缓冲函数（支持24种），和计算插值的插值函数（包含30种）。
￼![image](https://github.com/jh981479486/JHMediaTimingFunctionCore/blob/master/fuctionPath.jpg)
##使用CAAnimation动画需要设置timingFunction时:  
``animation.timingFunction = [JHMediaTimingFunctionCore easeOutCubic];``  
##使用帧动画或者定时器动画需要计算插值时:  
``CGFloat insertPostionX = [JHMediaTimingFunctionCore easeOutCirc:0.0 startValue:100 finalValue:200 duration:2.0];``
