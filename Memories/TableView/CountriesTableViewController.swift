//
//  CountriesTableViewController.swift
//  Memories
//
//  Created by Parsoya, Saritha(AWF) on 10/7/20.
//  Copyright © 2020 Par, Saritha. All rights reserved.
//

import UIKit

struct Country {
	var isoCode: String
	var name: String
}

class CountriesTableViewController : UITableViewController{
	
	let countries = [
		Country(isoCode: "at", name: "Austria"),
		Country(isoCode: "be", name: "Belgium"),
		Country(isoCode: "de", name: "Germany"),
		Country(isoCode: "el", name: "Greece"),
		Country(isoCode: "fr", name: "France"),
	]
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
	}
	
	// MARK:- Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return countries.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
		
		let country = countries[indexPath.row]
		cell.textLabel?.text = country.name
		
		return cell
	}
	
/*	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "Section Header"
	}
*/
}
