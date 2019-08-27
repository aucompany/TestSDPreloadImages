//
//  ViewController.m
//  TestPreloadImage
//
//  Created by Nguyen Tien LONG on 8/27/19.
//  Copyright © 2019 Active User Co.,LTD. All rights reserved.
//

#import "ViewController.h"
#import "ImageListViewController.h"

@interface ViewController () {
    NSArray *themeList;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     themeList = @[@"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/default_white.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/default_black.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/noteboard.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/threedee.gif",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/fullinfo_horizontal_black.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/fullinfo_vertical_black.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/cutecat.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/puregold.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/vintageroyal.png",
                   @"https://d29n1zush0k8j5.cloudfront.net/weatherapp/style/preview_brief/en/cosy_wall.png"
                   ];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"pageViewControllerEmbed"]) {
        UIViewController *pageViewCtr = segue.destinationViewController;
        if (pageViewCtr != nil && [pageViewCtr isKindOfClass:[ImageListViewController class]]) {
            ((ImageListViewController *)pageViewCtr).themeList = themeList;
        }
    }
}

@end
