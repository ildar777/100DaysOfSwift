//
//  ViewController.swift
//  Project6b
//
//  Created by Ильдар Нигметзянов on 24/07/2019.
//  Copyright © 2019 Learning with Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.red
        label1.text = "These"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.cyan
        label2.text = "These"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        label3.text = "These"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.green
        label4.text = "These"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orange
        label5.text = "These"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        let viewsDictionary = ["label1":label1,"label2":label2,"label3":label3,"label4":label4,"label5":label5]
//
//        
//        for label in viewsDictionary.keys {
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
//        }
//
        
//        let metrics = ["labelHeight":88]//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
         var previous: UILabel?
        
        for label in [label1,label2,label3,label4,label5] {
            //label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalTo: view.heightAnchor,multiplier: 0.2, constant: 10).isActive = true
            //label.widthAnchor.constraint(equalToConstant: 300).isActive = true
            
            //label.heightAnchor.constraint(equalToConstant: 100).isActive = true
            
            label.rightAnchor.constraint(equalTo:view.rightAnchor,constant: 0).isActive = true
            label.leadingAnchor.constraint(equalTo:view.leadingAnchor,constant: 0).isActive = true
            
            if let previous = previous {
               
                label.topAnchor.constraint(equalTo:previous.bottomAnchor,constant: 10).isActive = true
                label.trailingAnchor.constraint(equalTo:view.trailingAnchor,constant: 0).isActive = true
                label.leadingAnchor.constraint(equalTo:view.leadingAnchor,constant: 0).isActive = true
            
             
                
            } else {
                label.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor,constant: 0).isActive = true
            }
           //view.safeAreaLayoutGuide = true  //label5.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            
           
            previous = label
        }
        
        
        
        
    }


}
