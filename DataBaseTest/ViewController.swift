//
//  ViewController.swift
//  DataBaseTest
//
//  Created by 刘二拐 on 2019/11/19.
//  Copyright © 2019 刘二拐. All rights reserved.
//

import UIKit
import RealmSwift
import ObjectBox
class ViewController: UIViewController {
    @IBOutlet weak var descBox: UILabel!
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var textFBox: UITextField!
    @IBOutlet weak var desc: UILabel!
    let group = DispatchGroup.init()
    let queue = DispatchQueue(label: "")
    let spinner = UIActivityIndicatorView(style: .gray)
    var store: Store?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        spinner.backgroundColor = .blue
        spinner.center = CGPoint(x: view.frame.size.width / 2.0, y: 400)
        view.addSubview(spinner)
        configPath()
    }
    func configPath() {
        let databaseName = "LXXTest"
        let appSupport = try! FileManager.default.url(for: .applicationSupportDirectory,
                                                      in: .userDomainMask,
                                                      appropriateFor: nil,
                                                      create: true)
            .appendingPathComponent(Bundle.main.bundleIdentifier!)
        let directory = appSupport.appendingPathComponent(databaseName)
        try? FileManager.default.createDirectory(at: directory,
                                                 withIntermediateDirectories: true,
                                                 attributes: nil)
        store = try! Store(directoryPath: directory.path)
        
    }
    
    //   ********************realm操作***************************
    
    func initProudcutData(_ index: Int) -> Product {
        let product = Product()
        product.prdouctName = "香蕉" + String(index)
        product.prdouctID = "1"
        product.prdouctDes = "来自菲律宾的香蕉"
        product.prdouctPrice = NSString(format: "%d", index) as String
        product.prdouctUom = "KG"
        product.prdouctCategory = "进口"
        return product
    }
    
    @IBAction func clearData(_ sender: Any) {
        spinner.startAnimating()
        let start = Date().timeIntervalSince1970
        DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
            let realm = try! Realm()
            try! realm.write {
                realm.deleteAll()
            }
        }))
        group.notify(queue: DispatchQueue.main) {
            self.spinner.stopAnimating()
            let end = Date().timeIntervalSince1970
            self.desc.text = "清空耗时:" + String(end - start)
        }
    }
    
    @IBAction func insertData(_ sender: Any) {
        if textF.text?.count == 0 {
            return
        }
        spinner.startAnimating()
        let start = Date().timeIntervalSince1970
        let count = Int(self.textF.text!)!
        DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
            autoreleasepool {
                var productArray: [Product] = []
                for index in 0...count {
                    productArray.append(self.initProudcutData(index))
                }
                let realm = try! Realm()
                realm.beginWrite()
                realm.add(productArray)
                try! realm.commitWrite()
            }
            
        }))
        group.notify(queue: DispatchQueue.main) {
            self.spinner.stopAnimating()
            let end = Date().timeIntervalSince1970
            self.desc.text = "插入耗时:" + String(end - start)
        }
        
    }
    @IBAction func readData(_ sender: Any) {
        spinner.startAnimating()
        let start = Date().timeIntervalSince1970
        DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
            let realm = try! Realm()
            let result = realm.objects(Product.self).filter("prdouctPrice='1000'")
            print(result.count)
            print(result.first?.description as Any)
        }))
        group.notify(queue: DispatchQueue.main) {
            self.spinner.stopAnimating()
            let end = Date().timeIntervalSince1970
            self.desc.text = "读取耗时:" + String(end - start)
        }
    }
    //   ********************objectbox操作***************************
    @IBAction func insertByBox(_ sender: Any) {
        if textFBox.text?.count == 0 {
            return
        }
        spinner.startAnimating()
        let start = Date().timeIntervalSince1970
        let count = Int(self.textFBox.text!)!
        DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
            autoreleasepool {
                //批量插入操作
                let productEnities: [ProductEntity] = (0...count).map({ (index) -> ProductEntity in
                    self.initProudcutEnityData(index)
                })
                try! self.store?.runInTransaction {
                    let productEnityBox = self.store?.box(for: ProductEntity.self)
                    try? productEnityBox?.put(productEnities)
                }
            }
        }))
        group.notify(queue: DispatchQueue.main) {
            self.spinner.stopAnimating()
            let end = Date().timeIntervalSince1970
            self.descBox.text = "插入耗时:" + String(end - start)
        }
    }
    @IBAction func readByBox(_ sender: Any) {
        spinner.startAnimating()
        let start = Date().timeIntervalSince1970
        DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
            let productEnityBox = self.store?.box(for: ProductEntity.self)
            let result = try? productEnityBox?.query {
                ProductEntity.prdouctPrice.isEqual(to: "1000")
            }.build().find()
            if let result = result {
                print(result.count)
                print(result.last?.description as Any)
            }
        }))
        group.notify(queue: DispatchQueue.main) {
            self.spinner.stopAnimating()
            let end = Date().timeIntervalSince1970
            self.descBox.text = "读取耗时:" + String(end - start)
        }
    }
    @IBAction func clearBox(_ sender: Any) {
        spinner.startAnimating()
        let start = Date().timeIntervalSince1970
        DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
            let productEnityBox = self.store?.box(for: ProductEntity.self)
            let _ = try? productEnityBox?.removeAll()
        }))
        group.notify(queue: DispatchQueue.main) {
            self.spinner.stopAnimating()
            let end = Date().timeIntervalSince1970
            self.descBox.text = "清空耗时:" + String(end - start)
        }
    }
    func initProudcutEnityData(_ index: Int) -> ProductEntity {
        let product = ProductEntity()
        product.prdouctName = "香蕉" + String(index)
        product.prdouctID = "1"
        product.prdouctDes = "来自菲律宾的香蕉"
        product.prdouctPrice = NSString(format: "%d", index) as String
        product.prdouctUom = "KG"
        product.prdouctCategory = "进口"
        return product
    }
    
}

