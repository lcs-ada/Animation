import Foundation

class Sketch : NSObject {
    
    let canvas : Canvas
    
    var x : Int
    var y : Int
    //this function runs once
    override init(){
        
    //create canvas object - specify size
        canvas = Canvas(width:500, height: 500)
    
        //set starting point
        x = 250
        y = 250
          canvas.drawShapesWithBorders = false
    }
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        y = 1
        
    
    canvas.fillColor = Color.red
canvas.drawEllipse(centreX: x, centreY: x + y , width: 50, height: 50)
    
    canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: x, centreY: 500 - x , width: 50, height: 50)

    canvas.fillColor = Color.green
canvas.drawEllipse(centreX: -x + 500, centreY: x , width: 50, height: 50)
    
    canvas.fillColor = Color.yellow
canvas.drawEllipse(centreX: -x + 500, centreY: -x + 500 , width: 50, height: 50)
}
}
