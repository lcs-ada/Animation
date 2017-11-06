//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
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


/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


