//
//  DetailsViewController.swift
//  MovieViewer
//
//  Created by Meenakshi Muthuraman on 7/18/16.
//  Copyright © 2016 Meenakshi Muthuraman. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!

    
    var movie : NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        
        let title = movie["title"] as? String
        let overview = movie["overview"] as? String
        let posterPath = movie["poster_path"] as? String
        let baseURL = "http://image.tmdb.org/t/p/w500"
        
        //print(movie)
        if let imageURL = NSURL(string: baseURL + posterPath!){
            posterImageView.setImageWithURL(imageURL)
        }
        
        titleLabel.text = title
        overviewLabel.text = overview
        overviewLabel.sizeToFit()
            
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
