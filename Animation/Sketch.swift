
import Foundation

class Sketch : NSObject {
    
    let canvas : Canvas
    
    // Position of candy
    var x : Int
    
    // Position of candy
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting horizontal position
        x = 0
        
        // Set starting vertical position
        y = 0
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clear the canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)
        
        // Move from left to right
        x += 1

    //sine function
    let xInRadians = Double(x)*Double(Double.pi)/180.0
    y = Int(100*sin(xInRadians)+300)
        
     // move the axes
        canvas.translate(byX: x, byY: y)
        
    }
    
}
    
