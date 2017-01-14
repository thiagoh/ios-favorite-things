//
//  DetailsViewController.swift
//  FavoriteThings
//
//  Created by Thiago Andrade on 2017-01-14.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

  private var favouriteKey: String?;

  @IBOutlet weak var label: UILabel!;
  @IBOutlet weak var textView: UITextView!;

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    label.text = favouriteKey;
    textView.text = favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " " +
      favouriteKey! + " ";
  }

  public func setFavorite(_ favorite: String) {
    self.favouriteKey = favorite;
  }
}
