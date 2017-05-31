//
//  AlgorithmListViewController.swift
//  Algorithm-Visualization
//
//  Created by chenxiao on 2017/5/31.
//  Copyright © 2017年 Algorithm-Visualization. All rights reserved.
//

import UIKit

let ListReuseCellId = "com.algorithmV.algorithmListViewCell"
let ListReuseHeaderInSection = "com.algorithmV.alorithmListViewHS"

class AlgorithmListViewController: UITableViewController {

    @IBOutlet weak var listView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareData()
        setupTableView()
    }

//    override func viewDidAppear(_ animated: Bool) {
//        print(self.listView.contentInset.top)
//    }
    lazy var dataModel = { () -> [[String]] in
        let res = [
            [
                "BubbleSort",
                "SelectSort",
                "InsertSort",
                "ShellSort",
                "HeapSort",
                "MergeSort",
                "QuickSort",
                "RadixSort"
            ],
            [
                "BinarySearch"
            ]
        ]
        return res
    }()
}

//MARK: Setup
extension AlgorithmListViewController {
    func prepareData() {

    }

    func setupTableView() {
        self.listView.tableFooterView = UIView()
        //plain样式的sectionHeader悬停是基于contentInset的，因此不能设置contentInset
        self.listView.register(UITableViewCell.self, forCellReuseIdentifier: ListReuseCellId)
        self.listView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: ListReuseHeaderInSection)
    }

}

//MARK: UITableViewDataSource
extension AlgorithmListViewController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return self.dataModel.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.dataModel[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListReuseCellId, for:indexPath)
        cell.textLabel?.text = self.dataModel[indexPath.section][indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let titleStr = section == 0 ? "Sort Algorithm" : "Search Algorithm"
        let headerInSection = tableView.dequeueReusableHeaderFooterView(withIdentifier: ListReuseHeaderInSection)
        headerInSection?.backgroundColor = UIColor.lightGray
        headerInSection?.textLabel?.text = titleStr
        return headerInSection
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
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

//MARK: UITableViewDelegate
extension AlgorithmListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = AlgorithmDetailViewController()
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
