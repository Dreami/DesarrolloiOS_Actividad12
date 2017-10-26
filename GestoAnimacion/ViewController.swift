//
//  ViewController.swift
//  GestoAnimacion
//
//  Created by alicharlie on 11/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipoGesto: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestoTap = UITapGestureRecognizer(target: self, action: Selector("accionGesto:"))
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action: Selector("accionGesto:"))
        
        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
       
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    
    }
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }

    func accionGesto(sender: UIGestureRecognizer){
        if sender.isKindOfClass(UITapGestureRecognizer){
            tipoGesto.text = "Tap"
        }
        if sender.isKindOfClass(UISwipeGestureRecognizer){
            tipoGesto.text = "Swipe"
        }
        animacion()
    }
    
    func animacion(){
        UIView.animateWithDuration(3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
            }) { _ in
                self.tipoGesto.alpha = 0.0
        }
    }
    
    

}

