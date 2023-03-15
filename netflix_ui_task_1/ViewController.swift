//
//  ViewController.swift
//  netflix_ui_task_1
//
//  Created by R&W on 01/01/18.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
   
    
    
    var arrForCollectionview1  = ["1","2","3","4","5","6","7"]
    var arrForCollectionview2 = ["11","12","13","14","15","16","17"]
    var arrForCollectionview3 = ["18","19","20","21","22","23","24"]
    


    @IBOutlet weak var collectionViewForAdventure: UICollectionView!
    @IBOutlet weak var collectionviewForActions: UICollectionView!
    @IBOutlet weak var collectionviewForpopular: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionviewForpopular{
            return arrForCollectionview1.count
        }
        else if collectionView == self.collectionviewForActions{
            return arrForCollectionview2.count
        }
        else {
            return arrForCollectionview3.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionviewForpopular{
            let cell = collectionviewForpopular.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!myCollectionViewCell1
            cell.img1.image = UIImage(named: "\(arrForCollectionview1[indexPath.row])")
            return cell
        }
      else  if collectionView == self.collectionviewForActions{
            let cell2 = collectionviewForActions.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as!myCollectionViewCell2
            cell2.img2.image = UIImage(named: "\(arrForCollectionview2[indexPath.row])")
            return cell2
    }
        else {
                let cell3 = collectionViewForAdventure.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as!myCollectionViewCell3
                cell3.img3.image = UIImage(named: "\(arrForCollectionview3[indexPath.row])")
                return cell3
          }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 180)
    }
  
}
