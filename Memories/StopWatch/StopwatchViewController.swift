//
//  StopwatchViewController.swift
//  Memories
//
//  Created by Parsoya, Saritha(AWF) on 10/9/20.
//  Copyright © 2020 Par, Saritha. All rights reserved.
//

import UIKit

class StopwatchViewController : UIViewController{
	
	@IBOutlet weak var timeLabel: UILabel!
	
	var timer: Timer?
	var dateFormatter = DateFormatter()
	var dateAtStart: Date?
	var elapsedTimeAtStop: TimeInterval = 0

	@objc func updateTime() {
		timeLabel.text = dateFormatter.string(from: Date())
	}
	
	@objc func updateElapsedTime() {
		timeLabel.text = dateFormatter.string(from: dateForFormatter())
	}
	func dateForFormatter() -> Date{
		if let startDate = self.dateAtStart {
			let intervalSinceStart = Date.timeIntervalSince(startDate)
			let totalElapsedTime = elapsedTimeAtStop //+ intervalSinceStart //todo: fix this
			return NSDate(timeIntervalSince1970: totalElapsedTime) as Date
		}
		return NSDate(timeIntervalSince1970: elapsedTimeAtStop) as Date
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		dateFormatter.dateFormat = "hh:mm:ss"
		updateTime()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
//		timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:Selector("updateTime"), userInfo: nil, repeats: true)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		timer?.invalidate()
	}
	
	
	
	@IBAction func startButtonTapped(_ sender: Any) {
		if dateAtStart == nil {
			dateAtStart = Date()
			timer = Timer.scheduledTimer(timeInterval: 10.0/10.0, target: self, selector: "updateElapsedTime", userInfo: nil, repeats: true)
		}
	}
	@IBAction func ResetButtonTapper(_ sender: Any) {
		if let startDate = dateAtStart {
			elapsedTimeAtStop += 0 //Date.timeIntervalSince(startDate)
		}
		else {
			elapsedTimeAtStop = 0
		}
		timer?.invalidate()
		timer = nil
		dateAtStart = nil
		updateElapsedTime()
	}
}
