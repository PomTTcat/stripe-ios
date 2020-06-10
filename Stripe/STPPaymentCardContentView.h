//
//  STPPaymentCardContentView.h
//  StripeiOS
//
//  Created by PomCat on 2020/6/9.
//  PomCat
//

#import <UIKit/UIKit.h>
#import "STPFormTextField.h"

NS_ASSUME_NONNULL_BEGIN

@interface STPPaymentCardContentView : UIView


@property (weak, nonatomic) IBOutlet UIView *brandImageV;
@property (weak, nonatomic) IBOutlet UIView *numberField;
@property (weak, nonatomic) IBOutlet UIView *expirationField;
@property (weak, nonatomic) IBOutlet UIView *cvcField;
@property (weak, nonatomic) IBOutlet UIView *postalCodeField;

+ (STPPaymentCardContentView *)loadFromNib;

- (void)selectField:(int) number;

@end

NS_ASSUME_NONNULL_END
