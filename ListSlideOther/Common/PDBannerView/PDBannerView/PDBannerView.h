//
//  BannerView.h
//  轮播图(循环和自动)
//


#import <UIKit/UIKit.h>


/**
 7./创建一个协议
 需要把文件的名称传过来
 用@class BannerView;只传名称
 */
@class PDBannerView;

//定义一个协议( @protocol 协议名称 <NSObject> )
@protocol PDBannerViewDelegate <NSObject>

/**
 协议方法实现方式
 optional 可选 (默认是必须实现的)
 */
@optional

/**
 8./用来传值的协议方法

 @param bannerView 本类
 @param currentImage 传进来的当前的图片
 */
- (void)selectImage:(PDBannerView *)bannerView currentImage:(NSInteger)currentImage;

@end//协议结束

@interface PDBannerView : UIView

/**
 9./创建一个代理属性(用 weak)
 写在.h文件里的属性 外界可以调用
 */
@property (nonatomic , weak) id <PDBannerViewDelegate> delegate;

/**
 销毁定时器方法
 */
+ (void)destroyTimer;

/**
 1./声明一个自定义的构造方法 让外界的对象用来初始化bannerView

 @param frame 外界传入的frame
 @param addImageArray 外界传入的图片数组
 @return 1
 */
- (id)initWithFrame:(CGRect)frame andImageArray:(NSMutableArray *)addImageArray;

@end
