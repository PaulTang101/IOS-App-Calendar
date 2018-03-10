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
    
    var monthIndex: Int = 1 // access Date() to confirm actual month
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarView.delegate  = self
        calendarView.dataSource = self
        let itemSize = UIScreen.main.bounds.width/7 - 7
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
    
    
    @IBAction func nextMonth(_ sender: Any) {
        monthIndex += 1
        calendarView.reloadData()
        
    }
    
    @IBAction func lastMonth(_ sender: Any) {
        monthIndex -= 1
        calendarView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //let club = Club.clubs[indexPath.row]
        //selectedClub = club
        /*
        switch monthIndex {
        case 1:
            let date = collectionView.cellForItem(at: indexPath)
            date?.backgroundColor = UIColor.red
            
        case 1:
            let date = collectionView.cellForItem(at: indexPath)
            date?.backgroundColor = UIColor.red
            
        default:
            let date = collectionView.cellForItem(at: indexPath)
            date?.backgroundColor = UIColor.clear
        }
         */
        let date = collectionView.cellForItem(at: indexPath)
        date?.backgroundColor = UIColor.red
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        /*
        switch monthIndex {
        case 1:
            let date = collectionView.cellForItem(at: indexPath)
            date?.backgroundColor = UIColor.clear
            
        default:
            let date = collectionView.cellForItem(at: indexPath)
            date?.backgroundColor = UIColor.clear
        }
         */
        let date = collectionView.cellForItem(at: indexPath)
        date?.backgroundColor = UIColor.clear
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch monthIndex {
        case 1:
            return janDates.count
        case 2:
            return febDates.count
        default:
            return 0
        }
        // the switch statement can just return 35 if all months have 35 items
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discovercells", for: indexPath) as! CalendarCollectionViewCell
    
        cell.backgroundColor = UIColor.clear
        
        switch monthIndex {
        case 1:
            let dates = janDates[indexPath.row]
            cell.number?.text = dates
            return cell
        case 2:
            let dates = febDates[indexPath.row]
            cell.number?.text = dates
            return cell
        default:
            let dates = noDates[indexPath.row]
            cell.number?.text = dates
            return cell
        }
        //let dates = janDates[indexPath.row]
        //cell.clubName?.text = club.ClubNa
        //cell.clubImage.image = club.ClubCellImageName
        
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
