//
//  PlayerInfoController.swift
//  FootBallNew
//
//  Created by Nguyen Hai Dang on 6/25/16.
//  Copyright © 2016 Nguyen Hai Dang. All rights reserved.
//

import UIKit

class PlayerInfoController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mTableView: UITableView!

    @IBOutlet weak var mImgCover: UIImageView!
    
    @IBOutlet weak var mImgAvatar: UIImageView!
    
    @IBOutlet weak var mLbName: UILabel!
    
    var arrayInfo = ["Date of birth","Place of birth","Height","Playing position","number"];
    var arrCarrer:NSMutableArray = [];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mTableView.registerNib(UINib(nibName: "TextNormalCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "TextNormalCell");
        mTableView.registerNib(UINib(nibName: "PlayerCareerCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "PlayerCareerCell");
        mTableView.registerNib(UINib(nibName: "CareerHeaderView", bundle: NSBundle.mainBundle()), forHeaderFooterViewReuseIdentifier: "CareerHeaderView");
        mTableView.tableFooterView = UIView.init(frame: CGRectZero);
        
        // init Career Test object
        
        let objCareer1 = CareerModel()
        objCareer1.time = "2001-2002";
        objCareer1.team = "abcdef";
        objCareer1.numberAppearances = 100;
        objCareer1.numberGoals = 10;
        arrCarrer.addObject(objCareer1);
        arrCarrer.addObject(objCareer1);
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0){
            return arrayInfo.count;
        }else if (section == 1)
        {
            return arrCarrer.count;
        }
        return 0;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44;
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0)
        {
            return 0;
        }else
        {
            return 80;
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if (indexPath.section == 0)
        {
            let cell = tableView .dequeueReusableCellWithIdentifier("TextNormalCell") as! TextNormalCell;
            cell .initCell(arrayInfo[indexPath.row], content: "Thuy");
            return cell;
        }else
        {
            let cell = tableView .dequeueReusableCellWithIdentifier("PlayerCareerCell") as! PlayerCareerCell;
            cell.initCell(arrCarrer[indexPath.row] as! CareerModel);
            return cell;
        }
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if (section == 0)
//        {
//            return nil;
//        }else if (section == 1)
//        {
            let header = tableView.dequeueReusableHeaderFooterViewWithIdentifier("CareerHeaderView") as! CareerHeaderView;
            return header;
//        }
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
