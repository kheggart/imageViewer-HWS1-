//
//  ViewController.swift
//  imageViewer(HWS1)
//
//  Created by Keith Heggart on 22/6/2022.
//
// This project is intented to display 10 images, with text below them. It will use a table view controller, and then a detail view controller to display the image and the text.
// The information will be hard coded and then stored in the file structure, where it will be accessed. I WON'T make them objects as such, but instead numbered arrays.
//The key thing will be passign the information between the two view controllers. This is something that I want to practice.

import UIKit

var pictures = [String]()

class ViewController: UITableViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //lets create a constant called FM that is assigned to FileManager.default. This is a data type that lets us work with the file system
        let fm = FileManager.default
        //the we will create another constant called path. This sets path to the resource path of our bundle in the app. Basically, it's saying, where are all our appls located?
        let path = Bundle.main.resourcePath!
        //then we create a constant called items. This containts everything at path. This returns a strings containing filenames.
        let items = try! fm.contentsOfDirectory(atPath: path)
        //Next we start a loop that checks to see if the items have a certain prefix. It they do, we will append them to the
        for item in items {
            //if item.hasPrefix("P") {
            //this is my change. I didn't configure all the image files, so instead I am using the has suffic method. 
            if item.hasSuffix("JPG") {
                pictures.append(item)
                print(pictures)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    


}

