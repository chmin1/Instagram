//
//  MainViewController.swift
//  instagram
//
//  Created by Chavane Minto on 6/28/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var posts: [PFObject]?
    
    var refreshController = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        refreshController.addTarget(self, action: #selector(MainViewController.pullToRefresh(_:)), for: .valueChanged)
        tableView.insertSubview(refreshController, at: 0)
        
        refresh()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstaCell", for: indexPath) as! InstaCell
        let post = self.posts![indexPath.row]
        cell.instagramPost = post
        
        return cell
    }
    
    @IBAction func onLogOut(_ sender: Any) {
        PFUser.logOutInBackground { (error: Error?) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                self.dismiss(animated: true, completion: nil)
                print("log out successful")
            }
        }
    }
    
    func refresh() {
        let query = PFQuery(className: "Post")
        query.order(byDescending: "createdAt")
        query.includeKey("author")
        query.limit = 20
        
        // fetch data asynchronously
        query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) -> Void in
            if let posts = posts {
                // do something with the data fetched
                self.posts = posts
                self.tableView.reloadData()
            } else {
                // handle error
                print(error?.localizedDescription)
            }
        }
    }
    
    func pullToRefresh(_ refreshController: UIRefreshControl) {
        refresh()
        tableView.reloadData()
        refreshController.endRefreshing()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
