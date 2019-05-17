//
//  TableViewCell.m
//  GameOfThronesKata
//
//  Created by Mtetwa, T. (Thulani) on 2019/05/17.
//  Copyright © 2019 Glucode. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize titleLabel = _titleLabel;
@synthesize headerLabel = _headerLabel;
@synthesize secondTitleLabel = _secondTitleLabel;
@synthesize secondheaderLabel = _secondheaderLabel;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 140;
}

@end
