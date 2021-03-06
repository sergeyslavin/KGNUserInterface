//
//  ReusableCell.swift
//  KGNUserInterface
//
//  Created by David Keegan on 1/28/16.
//  Copyright © 2016 David Keegan. All rights reserved.
//

// MARK: - Collection View

/// Subclass of a collection view cell with helpful methods
public class CollectionViewCell: UICollectionViewCell {

    // Public method that returns a string of 
    // the class to be used as a reuseIdentifier.
    public class func reuseIdentifier() -> String {
        return "\(self)"
    }

}

/// Subclass of a collection view with helpful methods
public class CollectionView: UICollectionView {

    // Register a class, uses the reuse identifier from `reuseIdentifier()`
    public func registerClass(cellClass: CollectionViewCell.Type) {
        self.registerClass(cellClass, forCellWithReuseIdentifier: cellClass.reuseIdentifier())
    }

}

// MARK: - Table View

/// Subclass of a table view cell with helpful methods
public class TableViewCell: UITableViewCell {

    // Public method that returns a string of
    // the class to be used as a reuseIdentifier.
    public class func reuseIdentifier() -> String {
        return "\(self)"
    }
    
}

/// Subclass of a table view with helpful methods
public class TableView: UITableView {

    // Register a class, uses the reuse identifier from `reuseIdentifier()`
    public func registerClass(cellClass: TableViewCell.Type) {
        self.registerClass(cellClass, forCellReuseIdentifier: cellClass.reuseIdentifier())
    }
    
}
