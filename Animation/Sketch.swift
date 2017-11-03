import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        //draw an ellipse in on the first row
        canvas.drawEllipse(centreX: x, centreY: 350, width: 50, height: 50)
        
        //draw an ellipse in on the second row
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        
        //draw an ellipse in on the fourth row
        canvas.drawEllipse(centreX: x, centreY: 150, width: 50, height: 50)
        
        //draw an ellipse in on the fifth row
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        
    }
    
}
