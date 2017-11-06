
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
        let xInRadians = Double(x)*Double(Double.pi)/150.0
        y = Int(200*sin(xInRadians)+300)
        
        // move the axes
        canvas.translate(byX: x, byY: y)
        
        // Replace this comment with your first comment – what is the goal of the code you're about to write?
        
        //no borders
        canvas.drawShapesWithBorders = false
        
        //colour
        canvas.fillColor = Color.orange
        //draw two sides of the candy
        canvas.drawEllipse(centreX: 45, centreY: 20, width: 60, height: 60)
        canvas.drawEllipse(centreX: -45, centreY: -20, width: 60, height: 60)
        //color
        canvas.fillColor = Color.white
        //rectangles
        canvas.drawRectangle(centreX: 60, centreY: -18, width: 65, height: 40)
        canvas.drawRectangle(centreX: -60, centreY: 18, width: 65, height: 40)
        
        //tilted white rectangles
        canvas.rotate(by: 50)
        //color
        canvas.fillColor = Color.white
        //rectangles
        canvas.drawRectangle(centreX: -35, centreY: -25, width: 60, height: 50)
        canvas.drawRectangle(centreX: 35, centreY: 25, width: 60, height: 50)
        
        //color
        canvas.fillColor = Color.blue
        //body of the candy
        canvas.drawEllipse(centreX: 0, centreY: 0, width: 60, height: 60)
        
        
        //blue body
        canvas.rotate(by: 0)
        //color
        canvas.fillColor = Color.purple
        //ellipse
        canvas.drawEllipse(centreX: 0, centreY: 20, width: 8, height: 8)
        canvas.drawEllipse(centreX: -20, centreY: -5, width: 8, height: 8)
        canvas.drawEllipse(centreX: 0, centreY: -20, width: 8, height: 8)
        canvas.drawEllipse(centreX: 20, centreY: 0, width: 8, height: 8)
        
        
        //tilted white rectangles
        canvas.rotate(by: 70)
        //color
        canvas.fillColor = Color.white
        //rectangles
        canvas.drawRectangle(centreX: 3, centreY: 85, width: 60, height: 50)
        canvas.drawRectangle(centreX: -3, centreY: -85, width: 60, height: 50)

        
    }
    
}

