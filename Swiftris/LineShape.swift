//
//  LineShape.swift
//  Swiftris
//
//  Created by Riley Fewell on 10/7/15.
//  Copyright (c) 2015 Riley Fewell. All rights reserved.
//

class LineShape: Shape {
    /*

        Orientation 0 180
    
            • | 0 |
    
              | 1 |
        
              | 2 |
    
              | 3 |

        Orientation 90 270
    
    
             | 0 | 1•| 2 | 3 |
    
        • marks the row/column indicator for this shape

    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (0,2), (0,3)],
            Orientation.Ninety: [(-1,0), (0,0), (1,0), (2,0)],
            Orientation.OneEighty: [(0,0), (0,1), (0,2), (0,3)],
            Orientation.TwoSeventy: [(-1,0), (0,0), (1,0), (2,0)]
        ]
        
    }
    
    override var bottomBlocksForOrientation: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[fourthBlockIdx]],
            Orientation.Ninety: blocks,
            Orientation.OneEighty: [blocks[fourthBlockIdx]],
            Orientation.TwoSeventy:blocks
        ]
    }
}