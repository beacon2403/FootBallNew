//
//  RankingAndMatchsController.swift
//  FootBallNew
//
//  Created by Nguyen Hai Dang on 6/21/16.
//  Copyright © 2016 Nguyen Hai Dang. All rights reserved.
//

import UIKit

class RankingAndMatchsController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var mSegment: UISegmentedControl!
    @IBOutlet weak var mTableView: UITableView!
    
    @IBAction func actionChangeSegment(sender: AnyObject) {
        mTableView.reloadData();
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupTableview();
        
    }
    
    func setupTableview()
    {
        mTableView.registerNib(UINib(nibName: "RankingCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "RankingCell");
        mTableView.registerNib(UINib(nibName: "MatchCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "MatchCell");
        mTableView.tableHeaderView = UIView.init(frame: CGRectMake(0, 0, mTableView.frame.size.width, 0.01));
        mTableView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (mSegment.selectedSegmentIndex == 0)
        {
             return 50;
        }else
        {
             return 110;
        }
       
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        if (mSegment.selectedSegmentIndex == 0)
        {
            // Ranking
            let cell = tableView.dequeueReusableCellWithIdentifier("RankingCell", forIndexPath: indexPath) as! RankingCell;
            return cell;
        }else
        {
            // Matchs
            let cell = tableView.dequeueReusableCellWithIdentifier("MatchCell", forIndexPath: indexPath) as! MatchCell;
            return cell;
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (mSegment.selectedSegmentIndex == 0)
        {
            // Team Matching
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle());
            let teamVc = storyboard.instantiateViewControllerWithIdentifier("TeamController");
            self.navigationController?.pushViewController(teamVc, animated: true);
        }else
        {
            
        }
        
    }
    @IBAction func actionBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true);
    }
}
