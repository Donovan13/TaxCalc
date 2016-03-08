//
//  ViewController.m
//  TaxCalc
//
//  Created by Kyle on 3/7/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double sfTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *enteredText = self.priceTextField.text;
    double enteredValue = enteredText.doubleValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
    
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
 
    else {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
}
@end
