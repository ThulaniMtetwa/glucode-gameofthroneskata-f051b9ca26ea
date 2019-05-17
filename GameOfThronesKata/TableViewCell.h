//
//  TableViewCell.h
//  GameOfThronesKata
//
//  Created by Mtetwa, T. (Thulani) on 2019/05/17.
//  Copyright © 2019 Glucode. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *headerLabel;

@property (nonatomic, weak) IBOutlet UILabel *secondTitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *secondheaderLabel;

@end

NS_ASSUME_NONNULL_END
