//
//  ViewController.m
//  Camera
//
//  Created by bruno da luz on 10/17/14.
//  Copyright (c) 2014 bruno da luz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionCamera:(id)sender {
    self.pickerCamera = [[UIImagePickerController alloc] init];
    self.pickerCamera.delegate = self;
    [self.pickerCamera setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:self.pickerCamera animated:YES completion:nil];
}

- (IBAction)actionLibrary:(id)sender {
    self.pickerLibrary = [[UIImagePickerController alloc] init];
    self.pickerLibrary.delegate = self;
    [self.pickerLibrary setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:self.pickerLibrary animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imageView setImage:self.image];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
