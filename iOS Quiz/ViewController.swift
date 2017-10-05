//
//  ViewController.swift
//  iOS Quiz
//
//  Created by Viswanath Subramani S S on 03/10/17.
//  Copyright © 2017 BNRGuide. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var questionLabel: UILabel!
	@IBOutlet var answerLabel: UILabel!
	
	
	let questions: [String] = ["1- How could you setup Live Rendering ?",
	                           "2- What is the difference between Synchronous & Asynchronous task ?",
	                           "3- What Are B-Trees?",
	                           "4- What is made up of NSError object?",
	                           "5- What is Enum ?",
	                           "6- What is bounding box?",
	                           "7- Why don’t we use strong for enum property in Objective-C ?",
	                           "8- What is @synthesize in Objective-C ?",
	                           "9- What is @dynamic in Objective-C ?",
	                           "10- Why do we use synchronized ?"
	]
	
	let answers: [String] = ["The attribute @IBDesignable lets Interface Builder perform live updates on a particular view.",
	                         "Synchronous: waits until the task has completed. While,  Asynchronous: completes a task in background and can notify you when complete",
	                         "B-trees are search trees that provide an ordered key-value store with excellent performance characteristics. In principle, each node maintains a sorted array of its own elements, and another array for its children.",
	                         "There are three parts of NSError object a domain, an error code, and a user info dictionary. The domain is a string that identifies what categories of errors this error is coming from.",
	                         "Enum is a type that basically contains a group of related values in same umbrella.",
	                         "Bounding box is a term used in geometry; it refers to the smallest measure (area or volume) within which a given set of points.",
	                         "Because enums aren’t objects, so we don’t specify strong or weak here.",
	                         "synthesize generates getter and setter methods for your property.",
	                         "We use dynamic for subclasses of NSManagedObject. @dynamic tells the compiler that getter and setters are implemented somewhere else.",
	                         "synchronized guarantees that only one thread can be executing that code in the block at any given time."
		
	]
	
	var currentQuestionIndex: Int = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		questionLabel.text = questions[currentQuestionIndex]
	}
	
	@IBAction func showNextQuestion (_ sender: UIButton){
		currentQuestionIndex += 1
		
		if currentQuestionIndex==questions.count{
			currentQuestionIndex=0
		}
		
		questionLabel.text = questions[currentQuestionIndex]
		answerLabel.text = "? ? ? "
		
}

	@IBAction func showAnswer(_ sender: UIButton){
		answerLabel.text = answers[currentQuestionIndex]
		
}

}
