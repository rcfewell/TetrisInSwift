
//
//  TShape.swift
//  Swiftris
//
//  Created by Riley Fewell on 10/7/15.
//  Copyright (c) 2015 Riley Fewell. All rights reserved.
//

class TShape: Shape {
    /*
    
    Orientation 0
    
      • | 0 |
    
    | 1 | 2 | 3 |
    
    Orientation 90
    
    • | 1 |
    
     | 2 | 0 |
    
     | 3 |
    
    Orientation 180
    
     • | 3 | 2 | 1 |
    
           | 0 |
    
    rientation 270
    
      • | 3 |
    
    | 0 | 2 |
        
        | 1 |
    
    
    
    
    • marks the row/column indicator for that shape
    

    
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1,0), (0,1), (1,1), (2,1)],
            Orientation.Ninety: [(2,1), (1,0), (1,1), (1,2)],
            Orientation.OneEighty: [(1,2), (0,1), (1,1), (2,1)],
            Orientation.TwoSeventy: [(0,1), (1,0), (1,1), (1,2)]
        ]
    }
    
    override var bottomBlocksForOrientation: [Orientation: Array<Block> ] {
        return [
            Orientation.Zero: [blocks[secondBlockIdx], blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.Ninety: [blocks[firstBlockIdx], blocks[fourthBlockIdx]],
            Orientation.OneEighty: [blocks[firstBlockIdx], blocks[secondBlockIdx], blocks[fourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[firstBlockIdx], blocks[fourthBlockIdx]]
        ]
    }
}