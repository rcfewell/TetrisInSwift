//
//  SShape.swift
//  Swiftris
//
//  Created by Riley Fewell on 10/7/15.
//  Copyright (c) 2015 Riley Fewell. All rights reserved.
//

//left off here

class SShape: Shape {
    /*
    
    Orientation 0
    
    | 0•|
    | 1 | 2 |
        | 3 |
    
    Orientation 90
    
      • | 1 | 0 |
    | 3 | 2 |
    
    Orientation 180
    
    | 0•|
    | 1 | 2 |
        | 3 |
    
    Orientation 270
    
      • | 1 | 0 |
    | 3 | 2 |
    
    • marks the row/column indicator for the shape
    
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (1,1), (1,2)],
            Orientation.Ninety: [(2,0), (1,0), (1,1), (0,1)],
            Orientation.OneEighty: [(0,0), (0,1), (1,1), (1,2)],
            Orientation.TwoSeventy: [(2,0), (1,0), (1,1), (0,1)]
        ]
    }
    
    override var bottomBlocksForOrientation: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[secondBlockIdx], blocks[fourthBlockIdx]],
            Orientation.Ninety: [blocks[firstBlockIdx], blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.OneEighty: [blocks[secondBlockIdx], blocks[fourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[firstBlockIdx], blocks[thirdBlockIdx], blocks[fourthBlockIdx]]
        ]
    }
    
    
}