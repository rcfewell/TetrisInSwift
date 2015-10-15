//
//  ZShape.swift
//  Swiftris
//
//  Created by Riley Fewell on 10/7/15.
//  Copyright (c) 2015 Riley Fewell. All rights reserved.
//


class ZShape: Shape {
    /*
    
    Orientation 0
    
      • | 0 |
    | 2 | 1 |
    | 3 |
    
    Orientation 90
    
    | 0 | 1•|
        | 2 | 3 |
    
    Orientation 180
    
      • | 0 |
    | 2 | 1 |
    | 3 |
    
    Orientation 270
    
    | 0 | 1•|
        | 2 | 3 |
    
    
    • marks the row/column indicator for the shape
    
    */
    

    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1,0), (1,1), (0,1), (0,2)],
            Orientation.Ninety: [(-1,0), (0,0), (0,1), (1,1)],
            Orientation.OneEighty: [(1,0), (1,1), (0,1), (0,2)],
            Orientation.TwoSeventy: [(-1,0), (0,0), (0,1), (1,1)]
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