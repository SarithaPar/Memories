//
//  CountriesTableViewController.swift
//  Memories
//
//  Created by Parsoya, Saritha(AWF) on 10/7/20.
//  Copyright © 2020 Par, Saritha. All rights reserved.
//

import UIKit

class CountriesTableViewController : UITableViewController{
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
	}
	
	// MARK:- Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
		
		cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "Section \(section)"
	}
	
}
