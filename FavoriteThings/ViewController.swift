//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  // MARK: Model

  let favoriteThings: [String] = [
    "music",
    "computer",
    "food",
    "programming languages",
    "beer",
  ];

  @IBOutlet weak var tableView: UITableView!;

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated);
    tableView.delegate = self;
  }

  // MARK: Table View Data Source Methods

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("user selected the row", indexPath);

    performSegue(withIdentifier: "detailsSegue", sender: indexPath.row);
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    if (segue.identifier == "detailsSegue") {

      let controller = segue.destination as! DetailsViewController;
      let row = sender as! Int;
      let favorite = favoriteThings[row];
      controller.setFavorite(favorite);
    }

  }

  // number of rows
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return favoriteThings.count;
  }

  // cell for row at index path
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    // TODO: Implement method
    // 1. Dequeue a reusable cell from the table, using the correct “reuse identifier”
    // 2. Find the model object that corresponds to that row
    // 3. Set the images and labels in the cell with the data from the model object
    // 4. return the cell.

    let tableCell = tableView.dequeueReusableCell(withIdentifier: "FavoriteThingCell")!;
    let favoriteThingForRow = self.favoriteThings[(indexPath as NSIndexPath).row];
    tableCell.textLabel?.text = favoriteThingForRow;
    tableCell.detailTextLabel?.text = "details of " + favoriteThingForRow;

    return tableCell;
  }
}
