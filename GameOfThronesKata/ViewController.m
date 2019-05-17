#import "ViewController.h"
#import "TableViewCell.h"
#import "GRKSiblings.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma TableView methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
        return 1;
    if (section == 1)
        return [self.characterDetail.siblings count];
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    if (indexPath.section == 0){
        cell.titleLabel.text = @"Title";
        cell.secondTitleLabel.text = @"Status";
        
        cell.headerLabel.text = self.characterDetail.name;
        cell.secondheaderLabel.text = self.characterDetail.status;
    }
    
    if (indexPath.section == 1){
        cell.titleLabel.text = @"Name";
        cell.secondTitleLabel.text = @"Date of birth";
        
        GRKSiblings *sibling = [self.characterDetail.siblings objectAtIndex:indexPath.row];
        cell.headerLabel.text = sibling.name;
        cell.secondheaderLabel.text = sibling.dateOfBirth;
    }

    return cell;
}

#pragma Section Headers
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0)
        return @"ABOUT THE CHARACTER";
    if (section == 1)
        return @"SIBLINGS";
    return @"";
}
@end
