//
//  ViewController.h
//  Camera
//
//  Created by bruno da luz on 10/17/14.
//  Copyright (c) 2014 bruno da luz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIImagePickerController *pickerCamera;
@property (strong, nonatomic) UIImagePickerController *pickerLibrary;
@property (strong, nonatomic) UIImage *image;

- (IBAction)actionCamera:(id)sender;
- (IBAction)actionLibrary:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

