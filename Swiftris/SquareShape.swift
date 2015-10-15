//
//  SquareShape.swift
//  Swiftris
//
//  Created by Riley Fewell on 10/7/15.
//  Copyright (c) 2015 Riley Fewell. All rights reserved.
//

class SquareShape: Shape {
    /*

        | 0•| 1 |
        
        | 2 | 3 |
    
        • marks the row/column indicator for that shape
    
        This shape will not rotate

    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.Ninety: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.OneEighty: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.TwoSeventy: [(0,0), (1,0), (0,1), (1,1)]
        ]
    }
    
    override var bottomBlocksForOrientation: [Orientation: Array<Block> ] {
        return [
            Orientation.Zero: [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.Ninety: [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.OneEighty: [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[thirdBlockIdx], blocks[fourthBlockIdx]]
        ]
    }
    
}