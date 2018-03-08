//
//  CalendarViewController.swift
//  calendarTest
//
//  Created by Guest User on 2018-03-07.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var calendarView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarView.delegate  = self
        calendarView.dataSource = self
        let itemSize = UIScreen.main.bounds.width/7 - 5
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(2, 3, 1, 2)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        calendarView.collectionViewLayout = layout

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //let club = Club.clubs[indexPath.row]
        //selectedClub = club
    }
     */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10 //return the # of dates in the month
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discovercells", for: indexPath) as! CalendarCollectionViewCell
        //let club = Club.clubs[indexPath.row]
        //cell.clubName?.text = club.ClubNa
        //cell.clubImage.image = club.ClubCellImageName
        cell.number?.text = "1"
        return cell
        
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
