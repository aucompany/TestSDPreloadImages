//
//  ImageListViewController.h
//  TestPreloadImage
//
//  Created by Nguyen Tien LONG on 8/27/19.
//  Copyright © 2019 Active User Co.,LTD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLAnimatedImageView.h"


NS_ASSUME_NONNULL_BEGIN

@interface MyImageCell: UITableViewCell
@property (weak, nonatomic) IBOutlet FLAnimatedImageView *myImg;

@end

@interface ImageListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSArray *themeList;



@end

NS_ASSUME_NONNULL_END
