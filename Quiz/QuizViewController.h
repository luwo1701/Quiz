//
//  QuizViewController.h
//  Quiz
//
//  Created by Luke Worley on 7/9/16.
//  Copyright © 2016 LJWProductions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController{
}

@property (weak, nonatomic) IBOutlet UIButton *BackButton;
@property (weak, nonatomic) IBOutlet UILabel *QuestionTitle;
@property (weak, nonatomic) IBOutlet UIButton *ButtonA;
@property (weak, nonatomic) IBOutlet UIButton *ButtonB;
@property (weak, nonatomic) IBOutlet UIButton *ButtonC;
@property (weak, nonatomic) IBOutlet UIButton *ButtonD;
@property (weak, nonatomic) IBOutlet UILabel *AnswerA;
@property (weak, nonatomic) IBOutlet UILabel *AnswerB;
@property (weak, nonatomic) IBOutlet UILabel *AnswerC;
@property (weak, nonatomic) IBOutlet UILabel *AnswerD;

//variables that we will be pulling from QuestionsList.plist
@property (weak, nonatomic) NSArray *questions;
@property (weak, nonatomic) NSString *answer;

@end
