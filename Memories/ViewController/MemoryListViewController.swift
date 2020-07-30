//
//  MemoryListViewController.swift
//  Memories
//
//  Created by Parsoya, Saritha on 7/28/20.
//  Copyright © 2020 Par, Saritha. All rights reserved.
//
/*
1. "Noodles",
2. "FergBurger", "Fergburger is a hamburger restaurant located in Queenstown, New Zealand, which specialises in gourmet hamburgers. Their burgers include those prepared with lamb, cod, falafel, a swine-and-chicken mix and venison"
	"Pizza", "Pizza is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta"
*/

import UIKit

class MemoryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	let data = ["One", "Two", "Three"]
	
	@IBOutlet private weak var tableView: UITableView!
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
		tableView.delegate = self
		
		
	}
	
	// MARK: - UITableViewDelegate
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}
	
//	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//		return data.count
//	}
	
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView .dequeueReusableCell(withIdentifier: "cell", for:indexPath)
		cell.textLabel?.text = data[indexPath.row]

		return cell
	}
	
}
