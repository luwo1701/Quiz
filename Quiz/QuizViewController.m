//
//  QuizViewController.m
//  Quiz
//
//  Created by Luke Worley on 7/9/16.
//  Copyright © 2016 LJWProductions. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController

@synthesize BackButton;
@synthesize QuestionTitle;
@synthesize ButtonA;
@synthesize ButtonB;
@synthesize ButtonC;
@synthesize ButtonD;
@synthesize AnswerA;
@synthesize AnswerB;
@synthesize AnswerC;
@synthesize AnswerD;

@synthesize questions = questions_;
@synthesize answer = answer_;

//first thing called 
- (void)viewDidLoad {
    [super viewDidLoad];
    //get path
    NSString *path = [[NSBundle mainBundle] pathForResource:@"QuestionsList" ofType:@"plist"];
    //create a dictionary object "tempDict" using new path
    NSDictionary *tempDict = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.questions = [tempDict objectForKey:@"root"];
    
    //first question becomes
    NSDictionary *firstQuestion = [self.questions objectAtIndex:0];
    
    //populate the label elements in QuizView with contents of dictionary with keys of what follows the @
    self.QuestionTitle.text=[firstQuestion objectForKey:@"Title"];
    self.AnswerA.text=[firstQuestion objectForKey:@"A"];
    self.AnswerB.text=[firstQuestion objectForKey:@"B"];
    self.AnswerC.text=[firstQuestion objectForKey:@"C"];
    self.AnswerD.text=[firstQuestion objectForKey:@"D"];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
