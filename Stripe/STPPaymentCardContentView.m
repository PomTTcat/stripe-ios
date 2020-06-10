//
//  STPPaymentCardContentView.m
//  StripeiOS
//
//  Created by PomCat on 2020/6/9.
//  PomCat
//

#import "STPPaymentCardContentView.h"

static UIColor *customBlueColor;
static UIColor *customGrayColor;

@interface STPPaymentCardContentView()

@property (weak, nonatomic) IBOutlet UIView *bottomLine0;
@property (weak, nonatomic) IBOutlet UIView *bottomLine1;
@property (weak, nonatomic) IBOutlet UIView *bottomLine2;
@property (weak, nonatomic) IBOutlet UIView *bottomLine3;
@property (weak, nonatomic) IBOutlet UILabel *topLable0;
@property (weak, nonatomic) IBOutlet UILabel *topLable1;
@property (weak, nonatomic) IBOutlet UILabel *topLable2;
@property (weak, nonatomic) IBOutlet UILabel *topLable3;

@end

@implementation STPPaymentCardContentView

+ (STPPaymentCardContentView *)loadFromNib {

    NSBundle *stripeBundle = [NSBundle mainBundle];
    STPPaymentCardContentView *contentView = [[stripeBundle loadNibNamed:@"STPPaymentCardContentView" owner:nil options:nil] firstObject];
    return contentView;
}

+ (void)initialize {
    customBlueColor = [UIColor colorWithRed:0 green:129.0f/255.0f blue:236.0f/255.0f alpha:1];
    customGrayColor = [UIColor lightGrayColor];
}

- (nullable instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

- (void)allDefaultColorColor {
    _bottomLine0.backgroundColor = customGrayColor;
    _bottomLine1.backgroundColor = customGrayColor;
    _bottomLine2.backgroundColor = customGrayColor;
    _bottomLine3.backgroundColor = customGrayColor;
    _topLable0.textColor = customGrayColor;
    _topLable1.textColor = customGrayColor;
    _topLable2.textColor = customGrayColor;
    _topLable3.textColor = customGrayColor;
}

- (void)selectField:(int) number {
    
//    [self privateSelectField:number];
}

- (void)privateSelectField:(int) number {
    switch (number) {
        case 0:
            _bottomLine0.backgroundColor = customBlueColor;
            _topLable0.textColor = customBlueColor;
            break;
        case 1:
            _bottomLine1.backgroundColor = customBlueColor;
            _topLable1.textColor = customBlueColor;
            break;
        case 2:
            _bottomLine2.backgroundColor = customBlueColor;
            _topLable2.textColor = customBlueColor;
            break;
        case 3:
            _bottomLine3.backgroundColor = customBlueColor;
            _topLable3.textColor = customBlueColor;
            break;
        default:
            // 所有变成默认
            break;
    }

}

@end
