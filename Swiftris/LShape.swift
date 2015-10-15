//
//  LShape.swift
//  Swiftris
//
//  Created by Riley Fewell on 10/7/15.
//  Copyright (c) 2015 Riley Fewell. All rights reserved.
//

class LShape: Shape {
    /*
    
    Orientation 0
    
    | 0•|
    | 1 |
    | 2 | 3 |
    
    Orientation 90
    
          •
    | 2 | 1 | 0 |
    | 3 |
    
    Orientation 180
    
    | 3 | 2•|
        | 1 |
        | 0 |
    
    Orientation 270
    
          • | 3 |
    | 0 | 1 | 2 |
    
    • marks the row/column indicator for the shape
    
    Pivots about `1`
    
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (0,2), (1,2)],
            Orientation.Ninety: [(1,1), (0,1), (-1,1), (-1,2)],
            Orientation.OneEighty: [(0,2), (0,1), (0,0), (-1,0)],
            Orientation.TwoSeventy: [(-1,1), (0,1), (1,1), (1,0)]
        ]
    }
    
    override var bottomBlocksForOrientation: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.Ninety: [blocks[firstBlockIdx], blocks[secondBlockIdx], blocks[fourthBlockIdx]],
            Orientation.OneEighty: [blocks[firstBlockIdx], blocks[fourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[firstBlockIdx], blocks[secondBlockIdx], blocks[thirdBlockIdx]]
        ]
    }
    
}