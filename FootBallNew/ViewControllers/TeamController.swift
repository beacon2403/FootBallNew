//
//  TeamController.swift
//  FootBallNew
//
//  Created by Nguyen Hai Dang on 6/21/16.
//  Copyright © 2016 Nguyen Hai Dang. All rights reserved.
//

import UIKit

class TeamController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var mTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mTableView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
        mTableView .registerNib(UINib(nibName: "MatchCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "MatchCell");
        
    }
    
    func actionPushToTeamInfo()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle());
        let teamInfoVC = storyboard.instantiateViewControllerWithIdentifier("TeamInfoController");
        self.navigationController?.pushViewController(teamInfoVC, animated: true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MatchCell", forIndexPath: indexPath) as! MatchCell;
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

    @IBAction func actionBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true);
    }
    @IBAction func actionTeamInfo(sender: AnyObject) {
        self.actionPushToTeamInfo();
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
