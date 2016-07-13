//
//  TeamInfoController.swift
//  FootBallNew
//
//  Created by Nguyen Hai Dang on 6/21/16.
//  Copyright © 2016 Nguyen Hai Dang. All rights reserved.
//

import UIKit

class TeamInfoController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var mImgLogoTeam: UIImageView!
   
    @IBOutlet weak var mLbCity: UILabel!
    @IBOutlet weak var mLbOwn: UILabel!
    @IBOutlet weak var mLbCoatch: UILabel!
    @IBOutlet weak var mLbStadium: UILabel!
    
    @IBOutlet weak var mLbCityName: UILabel!
    @IBOutlet weak var mLbOwnName: UILabel!
    @IBOutlet weak var mLbCoatchName: UILabel!
    @IBOutlet weak var mLbStadiumName: UILabel!
    
    @IBOutlet weak var mTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        mTableView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
    }
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCell;
        return cell;
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle());
        let playerInfoVC = storyboard.instantiateViewControllerWithIdentifier("PlayerInfoController");
        self.navigationController?.pushViewController(playerInfoVC, animated: true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actionBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true);
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
