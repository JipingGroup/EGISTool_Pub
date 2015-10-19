//
//  LocationChooseView.m
//  EGISTool
//
//  Created by JAMES.TAN on 15/10/14.
//  Copyright © 2015年 ewj01. All rights reserved.
//

#import "LocationChooseView.h"
#import "CountryCell.h"
#import "UserInfoView.h"

@interface LocationChooseView ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic ,strong) NSMutableArray *arr;

@end

static NSString *identifier = @"cell";
static NSString * reuseIdentifier = @"ReusableView";
@implementation LocationChooseView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"chooseCountry";
    self.navigationController.navigationBar.backgroundColor = [UIColor blackColor];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    flowLayout.headerReferenceSize = CGSizeMake(self.view.frame.size.width, 50);
//    flowLayout.itemSize = CGSizeMake(100, 100);
    UICollectionView *countryView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    [countryView registerClass:[CountryCell class] forCellWithReuseIdentifier:identifier];
    [countryView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifier];
    countryView.dataSource = self;
    countryView.delegate = self;
    [self.view addSubview:countryView];
    countryView.backgroundColor = [UIColor whiteColor];
    
    [self testArr];
}

- (void)testArr
{
    _arr = [NSMutableArray array];
    for (int i = 0; i<33; i++) {
        NSString *str = [NSString stringWithFormat:@"%d",i];
        [_arr addObject:str];
    }
}


- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    UICollectionReusableView * headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    return headerView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 5;
            break;
        case 1:
            return 1;
            break;
        case 2:
            return 7;
            break;
        case 3:
            return 6;
            break;
        case 4:
            return 5;
            break;
        case 5:
            return 4;
            break;
        case 6:
            return 5;
            break;
        default:
            return 0;
            break;
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 7;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CountryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[CountryCell alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    }
    
    cell.text.text = [NSString stringWithFormat:@"%ld",indexPath.row+indexPath.section];

    return cell;
}

#pragma mark 点击事件

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end
